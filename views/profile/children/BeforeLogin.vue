<template>
  <div class="before_login">
    <div class="main">
      <div class="logo"></div>
      <div class="login_mode">
        <div class="login_btn" @click="loginClick">
          <i class="iconfont icon-ad79"></i>
          <span>手机登录</span>
        </div>
      </div>
      <div class="login_footer">
        <div class="content">
          <i class="iconfont icon-anquan"></i>
          <span>平台用户信息安全由</span>
          <img src="https://pinduoduoimg.yangkeduo.com/personal/brand_picc_new.png" alt="">
          <span>承保</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'BeforeLogin',
    methods: {
      loginClick() {
        this.$emit('loginClick')
      }
    }
  }
</script>

<style scoped>
  .before_login {
    background-color: #f5f5f5;
    width: 100vw;
    height: 100vh;
    position: fixed;
    top: 0;
  }
  .main {
    padding-top: 120px;
  }
  .logo {
    background: url('https://static.yangkeduo.com/assets/img/login_footer.png') no-repeat;
    width: 150px;
    height: 55px;
    background-size: contain;
    margin: 0 auto 100px;
  }
  .login_mode {
    width: 100vw;
    height: 40px;
    line-height: 40px;
  }
  .login_btn {
    width: 80%;
    height: 100%;
    margin: 0 auto;
    background-color: orange;
    border-radius: 6px;
    color: #fff;
    text-align: center;
  }
  .icon-ad79 {
    font-size: 17px;
  }
  .login_btn span {
    font-size: 17px;
  }
  .login_footer {
    margin-top: 30px;
  }
  .icon-anquan {
    color: #12cc0f;
    font-size: 12px;
  }
  .content {
    width: 80%;
    margin: 0 auto;
    color: #9c9c9c;
    text-align: center;
  }
  .content span {
    font-size: 12px;
  }
  .content img {
    width: 30%;
    vertical-align: middle;
  }
</style>