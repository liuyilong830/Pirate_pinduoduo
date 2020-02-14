<template>
  <div>
    <div v-if="!showLoginComp">
      <before-login @loginClick='loginClick' />
      <transition name="login">
        <login v-if="isShow" class="login"></login>
      </transition>
    </div>
    
    <b-scroll v-else :probeType='3' :pullUpLoad='true' class="wrapper_profile">
      <!-- 顶部基本信息 -->
      <base-info></base-info>
      <!-- 订单版块 -->
      <order-info></order-info>
      <!-- 售后版块 -->
      <customer-service></customer-service>
      <!-- 其他版块 -->
      <other></other>
    </b-scroll>

  </div>
</template>

<script>
  import BScroll from '../../src/components/common/better-scroll/BScroll'
  import BeforeLogin from './children/BeforeLogin'
  import Login from './children/Login'
  import {mapGetters} from 'vuex'
  import BaseInfo from './children/BaseInfo'
  import OrderInfo from './children/OrderInfo'
  import CustomerService from './children/CustomerService'
  import Other from './children/Other'

  export default {
    name: 'Profile',
    components: {
      BScroll,
      BeforeLogin,
      Login,
      BaseInfo,
      OrderInfo,
      CustomerService,
      Other
    },
    data() {
      return {
        isShow: false,
        isLoginShow: true
      }
    },
    computed: {
      ...mapGetters(['showLoginComp'])
    },
    methods: {
      // 登录的时候先展示蒙版
      loginClick() {
        this.isShow = true
      }
    }
  }
</script>

<style scoped>
  .wrapper_profile {
    height: calc(100vh - 49px);
  }
  .login {
    bottom: 0;
  }
  .login-enter-active {
    transition: all .3s;
    bottom: 0;
  }
  .login-enter {
    bottom: -98vh;
  }
</style>