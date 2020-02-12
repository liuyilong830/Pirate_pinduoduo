<template>
  <div>
    <div v-if="!showLoginComp">
      <before-login @loginClick='loginClick' />
      <transition name="login">
        <login v-if="isShow" class="login"></login>
      </transition>
    </div>
    
    <b-scroll v-else :probeType='3' :pullUpLoad='true' class="wrapper_profile">
      <base-info></base-info>
    </b-scroll>

  </div>
</template>

<script>
  import BScroll from '../../src/components/common/better-scroll/BScroll'
  import BeforeLogin from './children/BeforeLogin'
  import Login from './children/Login'
  import {mapGetters} from 'vuex'
  import BaseInfo from './children/BaseInfo'

  export default {
    name: 'Profile',
    components: {
      BScroll,
      BeforeLogin,
      Login,
      BaseInfo
    },
    data() {
      return {
        isShow: false,
        isLoginShow: true
      }
    },
    props: {
      user: {
        type: Object,
        default() {
          return {}
        }
      }
    },
    computed: {
      ...mapGetters(['showLoginComp'])
    },
    methods: {
      loginClick() {
        this.isShow = true
      }
    },
    created() {
      console.log('created')
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