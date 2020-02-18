<template>
  <div class="profile">
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_profile">
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
    }
  }
</script>

<style scoped>
  .wrapper_profile {
    height: calc(100vh - 49px);
  }
</style>