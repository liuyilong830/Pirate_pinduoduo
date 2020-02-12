<template>
  <div id="app">
    <keep-alive exclude="Detail">
      <router-view></router-view>
    </keep-alive>
    <main-tab-bar></main-tab-bar>
  </div>
</template>

<script>
  import MainTabBar from './components/common/tabbar/MainTabBar'
  import {loginUser} from './network/login'
  export default {
    name: 'App',
    components: {
      MainTabBar
    },
    mounted() {
      loginUser().then(res => {
        if(res.success_code === 200) {
          console.log(res)
          this.$store.commit('setUserInfo',{userInfo: res.message})
        }
      })
    }
  }
</script>

<style>
  @import '../static/css/base.css';

</style>
