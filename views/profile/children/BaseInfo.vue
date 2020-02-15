<template>
  <div class='base_info' v-if='Object.keys(userInfo) !== null'>
    <div class='top_header'>
      <div class='info_img' @click="personInfo">
        <img :src='userInfo.head_img'>
      </div>
      <div class='info_phone'>
        <div class='phone' @click="personInfo">
          <span>{{getFilterPhone}}</span>
          <i class='iconfont icon-ad79' v-if='userInfo.mode'></i>
          <i class='iconfont icon-zhanghao' v-else></i>
        </div>
        <div class='qiang'>勋章墙 ></div>
      </div>
    </div>
    <div class="month_card">
      <div class="card">
        <span>省钱月卡</span>
        <div class="dot"></div>
        <span>帮你还194元</span>
      </div>
      <span>></span>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  export default {
    name: 'BaseInfo',
    data() {
      return {
        userInfo: {}
      }
    },
    computed: {
      ...mapGetters(['getUserInfo']),
      // 将手机号转换成指定格式
      getFilterPhone() {
        if(!this.userInfo.mode) {
          return this.userInfo.username
        }else {
          // 15073382436 => 150****2436
          var str = this.userInfo.phone.substr(3,4)
          return this.userInfo.phone.replace(str,'****')
        }
      }
    },
    methods: {
      // 点击头像或手机号部分，显示修改信息页面
      personInfo() {
        this.$router.push('/person_info')
      }
    },
    created() {
      // this.userInfo = this.getUserInfo
      this.userInfo = JSON.parse(window.sessionStorage.getItem('userInfo'))
    }
  }
</script>

<style scoped>
  .base_info {
    padding: 17px 15px 0;
    width: 100vw;
    box-sizing: border-box;
  }
  .top_header {
    display: flex;
    margin-bottom: 15px;
  }
  .info_img {
    width: 60px;
    height: 60px;
    margin-right: 10px;
  }
  .info_phone {
    flex: 80%;
    display: flex;
    justify-content: space-around;
    flex-direction: column;
    padding: 5px 0;
  }
  .info_phone .phone span {
    font-size: 17px;
  }
  .info_img img {
    width: 100%;
    border-radius: 50%;
  }
  .qiang {
    color: #9c9c9c;
  }
  .iconfont {
    font-size: 16px;
  }
  .month_card {
    width: 100%;
    height: 45px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    background: #fdefee;
    color: #e02e24;
    box-sizing: border-box;
    padding: 0 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .card {
    display: flex;
    align-items: center;
  }
  .month_card .dot {
    width: 1px;
    height: 12px;
    margin: 0 5px;
    background-color: #e02e24;
  }
</style>