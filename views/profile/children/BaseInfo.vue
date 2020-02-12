<template>
  <div class='base_info' v-if='Object.keys(userInfo) !== null'>
    <div class='top_header'>
      <div class='info_img'>
        <img :src='userInfo.head_img'>
      </div>
      <div class='info_phone'>
        <div class='phone'>
          <span>{{getFilterPhone}}</span>
          <i class='iconfont icon-ad79' v-if='userInfo.mode'></i>
          <i class='iconfont icon-zhanghao' v-else></i>
        </div>
        <div class='qiang'>勋章墙 ></div>
      </div>
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
        if(!this.userInfo.phone) {
          return this.userInfo.phone = '未绑定手机号'
        }else {
          // 15073382436 => 150****2436
          var str = this.userInfo.phone.substr(3,4)
          return this.userInfo.phone.replace(str,'****')
        }
      }
    },
    created() {
      this.userInfo = this.getUserInfo
    }
  }
</script>

<style scoped>
  .base_info {
    padding: 10px 15px 0;
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
</style>