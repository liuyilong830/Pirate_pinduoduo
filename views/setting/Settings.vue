<template>
  <div class="settings">
    <div class="content">
      <pay-set></pay-set>
      <problem></problem>
      <resident></resident>
      <about-dd class="about"></about-dd>
      <!-- 退出按钮 -->
      <button class="btn" @click="signOutClick">退出登录</button>
    </div>
  </div>
</template>

<script>
  import PaySet from './children/PaySet'
  import Problem from './children/Problem'
  import Resident from './children/Resident'
  import AboutDd from './children/AboutDd'
  export default {
    name: 'Settings',
    components: {
      PaySet,
      Problem,
      Resident,
      AboutDd
    },
    methods: {
      signOutClick() {
        this.$store.commit('signOut')
        this.$router.replace('/login')
      }
    }
  }
</script>

<style scoped>
  .settings {
    width: 100vw;
    height: 100vh;
    background-color: #f5f5f5;
  }
  .content {
    background-color: #fff;
  }
  .about {
    border-bottom: 13px solid #f5f5f5;
  }
  .btn {
    width: 100vw;
    height: 45px;
    text-align: center;
    line-height: 45px;
    font-size: 16px;
    color: #9c9c9c;
    background-color: #fff;
    border: none;
  }
</style>