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
      <div class="item">
        <span class="title">手机号</span>
        <span>{{ getPhone }}</span>
      </div>
      <div class="item">
        <span class="title">性别</span>
        <span>{{ getSex }}</span>
      </div>
      <div class="item">
        <span class="title">地区</span>
        <span>{{ getRegion }}</span>
      </div>
      <div class="item" @click="setBirthday">
        <span class="title">生日</span>
        <span>{{ getBirthday }}</span>
      </div>
      <div class="item">
        <span class="title">个性签名</span>
        <span>{{ getRegion }}</span>
      </div>
      <div class="item">
        <span class="title">多多号</span>
        <span>{{ userInfo.uid }}</span>
      </div>
    </div>

    <birthday-popup v-model='popupVisible' v-bind.sync='date' @confirm='handleConfirm' v-if="popupVisible"></birthday-popup>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import {getUser,setUserBaseInfo} from '../../../src/network/profile'
  import BirthdayPopup from '../../../src/components/common/popup/BirthdayPopup'
  export default {
    name: 'PersonInfo',
    components: {
      BirthdayPopup
    },
    data() {
      return {
        userInfo: {},
        popupVisible: false,
        date: {
          year: null,
          month: null,
          day: null
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
      // 展示个信签名
      getRegion() {
        return this.userInfo.region? this.userInfo.region : '无'
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
        this.$store.commit('setDateTime',{date})
      },
      // 在生日列表选择组件选择玩日期后将得到的日期对象转换为指定的格式输出
      changeDate(date) {
        return `${date.year}-${date.month}-${date.day}`
      }
    },
    created() {
      // 获取个人信息数据
      /* getUser().then(res => {
        this.userInfo = res.message
      }) */
      this.userInfo = JSON.parse(window.sessionStorage.getItem('userInfo'))
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
</style>