<template>
  <div class="person_info" v-if="Object.keys(userInfo).length !== 0">
    <div class="top_title">基本信息</div>
    <div class="info">
      <div class="item image">
        <span class="title">头像</span>
        <img :src="userInfo.head_img" alt="">
      </div>
      <div class="item">
        <span class="title">昵称</span>
        <span>{{ getNickName }}</span>
      </div>
      <div class="item" @click="setPhoneShow">
        <span class="title">手机号</span>
        <span>{{ getPhone }}</span>
      </div>
      <div class="item" @click="setSexShow">
        <span class="title">性别</span>
        <span>{{ getSex }}</span>
      </div>
      <div class="item" @click="setAddress">
        <span class="title">住址</span>
        <span>{{ getAddress }}</span>
      </div>
      <div class="item" @click="setBirthday">
        <span class="title">生日</span>
        <span>{{ getBirthday }}</span>
      </div>
      <div class="item" @click="setSignature">
        <span class="title">个性签名</span>
        <span>{{ getSignature }}</span>
      </div>
      <div class="item">
        <span class="title">多多号</span>
        <span>{{ userInfo.uid }}</span>
      </div>
    </div>
    <div class="back">
      <button class="btn" @click="backClick">&nbsp;返 回&nbsp;</button>
    </div>

    <birthday-popup v-model='popupVisible' v-bind.sync='date' @confirm='handleConfirm' v-if="popupVisible"></birthday-popup>
    <sex-popup v-model="sexPop" :sex.sync='userInfo.sex' @confirmSex='handleConfirmSex' v-show="sexPop"></sex-popup>
    <signature-popup v-model="signaturePop" :signature.sync='userInfo.signature' @confirmSign='handleConfirmSign' v-if="signaturePop"/>
    <address-popup v-model="addressPop" v-if="addressPop" v-bind.sync='address' @confilmAddress='handleConfirmAddress'></address-popup>
    <phone-popup v-model="phonePop" v-if="phonePop" :phone.sync='userInfo.phone' @confirmPhone='handleConfirmPhone'></phone-popup>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import {getUser,setUserBaseInfo} from '../../../src/network/profile'
  import BirthdayPopup from '../../../src/components/common/popup/BirthdayPopup'
  import SexPopup from '../../../src/components/common/popup/SexPopup'
  import SignaturePopup from '../../../src/components/common/popup/SignaturePopup'
  import addressPopup from '../../../src/components/common/popup/addressPopup'
  import PhonePopup from '../../../src/components/common/popup/PhonePopup'
  export default {
    name: 'PersonInfo',
    components: {
      BirthdayPopup,
      SexPopup,
      SignaturePopup,
      addressPopup,
      PhonePopup
    },
    data() {
      return {
        userInfo: {},
        popupVisible: false, // 控制生日选择组件的打开和关闭
        sexPop : false, // 控制性别选择组件的打开和关闭
        signaturePop: false, // 控制地区选择组件的打开和关闭
        addressPop: false,
        phonePop: false,
        date: {
          year: null,
          month: null,
          day: null
        },
        address: {
          province: null,
          city: null,
          county: null
        }
      }
    },
    computed: {
      // 展示性别
      getSex() {
        return this.userInfo.sex? this.userInfo.sex : '未知'
      },
      // 展示昵称
      getNickName() {
        return this.userInfo.username? this.userInfo.username : '未设置'
      },
      // 展示地区
      getAddress() {
        if(this.address.county) {
          return this.address.county !== '请选择'? `${this.address.province}-${this.address.city}-${this.address.county}` : '未设置'
        }
        return this.userInfo.address? this.userInfo.address : '未设置'
      },
      // 展示个性签名
      getSignature() {
        return this.userInfo.signature? this.userInfo.signature : '无'
      },
      // 展示手机号
      getPhone() {
        if(this.userInfo.phone) {
          var str = this.userInfo.phone.substr(3,4)
          return this.userInfo.phone.replace(str,'****')
        }
        return '未绑定'
      },
      // 展示生日
      getBirthday() {
        // 先判断是否存在临时day只，存在的情况只能是从日期选择组件中选择的
        if(this.date.day) {
          return this.date.day? `${this.date.year}-${this.date.month}-${this.date.day}` : '无'
        }else if(this.userInfo.date) {
          // 如果没有临时day则判断sessionStorage中或者数据库中是否存在
          var dd =new Date(this.userInfo.date)
          this.date = {
            year: dd.getFullYear(),
            month: dd.getMonth()+1,
            day: dd.getDate()
          }
        }
        return this.date.day? `${this.date.year}-${this.date.month}-${this.date.day}` : '无'
      }
    },
    methods: {
      // 点击性别区域展示性别选择组件
      setSexShow() {
        this.sexPop = true
      },
      setSignature() {
        this.signaturePop = true
      },
      // 点击生日部分，展示生日列表选择组件
      setBirthday() {
        this.popupVisible = true
      },
      // 点击日时间之后的回调函数
      handleConfirm(date) {
        this.date = date
        date = this.changeDate(this.date)
        setUserBaseInfo({date}).then(res => {
          // console.log(res.message)
        })
        this.$store.commit('setBaseInfo',{date})
      },
      // 选择性别之后的回调函数
      handleConfirmSex(sex) {
        setUserBaseInfo({sex}).then(res => {
          // console.log(res.message)
        })
        this.$store.commit('setBaseInfo',{sex})
      },
      // 在生日列表选择组件选择玩日期后将得到的日期对象转换为指定的格式输出
      changeDate(date) {
        return `${date.year}-${date.month}-${date.day}`
      },
      // 返回到 Profile组件的方法
      backClick() {
        this.$router.replace('/profile')
      },
      // 在设置完个性签名之后的回调函数
      handleConfirmSign(signature) {
        setUserBaseInfo({signature}).then(res => {
          console.log(res)
        })
        this.$store.commit('setBaseInfo',{signature})
      },
      setAddress() {
        this.addressPop = true
      },
      // 选择地区之后的回调函数
      handleConfirmAddress(address) {
        if(address.includes('请选择')) {
          this.address.province = this.address.city = this.address.county = null
          return
        }
        setUserBaseInfo({address}).then(res => {
          console.log(res)
        })
        this.$store.commit('setBaseInfo',{address})
      },
      setPhoneShow() {
        this.phonePop = true
      },
      handleConfirmPhone(phone) {
        setUserBaseInfo({phone}).then(res => {
          console.log(res)
        })
        this.$store.commit('setBaseInfo',{phone})
      }
    },
    created() {
      // 获取个人信息数据
      /* getUser().then(res => {
        this.userInfo = res.message
      }) */
      this.userInfo = JSON.parse(window.localStorage.getItem('userInfo'))
    }
  }
</script>

<style scoped>
  .person_info {
    background-color: #f5f5f5;
    width: 100vw;
    height: 100%;
    position: fixed;
    top: 0;
  }
  .top_title {
    box-sizing: border-box;
    padding: 0 10px;
    height: 50px;
    line-height: 50px;
    font-size: 17px;
    color: #58595b;
  }
  .info {
    background-color: #fff;
  }
  .item {
    height: 46px;
    padding: 0 10px;
    display: flex;
    box-sizing: border-box;
    justify-content: space-between;
    border-bottom: 1px solid #f9f0f0;
    align-items: center;
  }
  .image {
    height: 70px;
  }
  .item img {
    width: 50px;
    border-radius: 50%;
  }
  .item span {
    color: #8f9196;
  }
  .item .title {
    font-size: 15px;
    color: #383838;
  }
  .back {
    margin-top: 15px;
    text-align: center;
  }
  .btn {
    width: 95vw;
    height: 40px;
    background-color: orange;
    font-size: 17px;
    line-height: 40px;
    border: 1px solid #fff;
    border-radius: 6px;
    color: #fff;
  }
  .address {
    background-color: #fff;
  }
</style>