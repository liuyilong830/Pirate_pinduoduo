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

    <birthday-popup :value='popupVisible' @change="birthdayClick"></birthday-popup>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import {getUser} from '../../../src/network/profile'
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
        date: null
      }
    },
    computed: {
      getSex() {
        return this.userInfo.sex? this.userInfo.sex : '无'
      },
      getNickName() {
        if(this.userInfo.phone) {
          var str = this.userInfo.phone.substr(3,4)
        }
        return this.userInfo.username? this.userInfo.username : this.userInfo.phone
      },
      getRegion() {
        return this.userInfo.region? this.userInfo.region : '无'
      },
      changeNickName() {
        if(this.userInfo.phone) {
          var str = this.userInfo.phone.substr(3,4)
          return this.userInfo.phone.replace(str,'****')
        }
        return 
      },
      getBirthday() {
        return this.date? `${this.date.year}年${this.date.mouth}月${this.date.day}日` : '无'
      }
    },
    methods: {
      setBirthday() {
        this.popupVisible = true
      },
      birthdayClick(event) {
        this.popupVisible = event.value
        this.date = event.date
      }
    },
    mounted() {
      // 获取个人信息数据
      getUser().then(res => {
        this.userInfo = res.message
        this.userInfo.phone = this.changeNickName
      })
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