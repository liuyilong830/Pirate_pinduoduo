<template>
  <div id="app">
    <keep-alive :exclude="['Detail','PayMent']">
      <router-view></router-view>
    </keep-alive>
    <main-tab-bar v-show="$route.meta.showTabBar"></main-tab-bar>
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
    created() {
      /* loginUser().then(res => {
        if(res.success_code === 200) {
          this.$store.commit('setToken', res.token)
          this.$store.commit('setUserInfo',{userInfo: res.message})
        }
      }) */
    }
  }
</script>

<style>
  @import '../static/css/base.css';

</style>
