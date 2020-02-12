<template>
  <div class="login">
    <div class="main">
      <div class="logo"></div>
      <form action="" class="form" ref="form">
        <!-- 登录方式的切换 -->
        <div class="top_btn">
           <span :class="{active: isMode}" @click="isMode = true">短信登录</span>
           <span :class="{active: !isMode}" @click="isMode = false">密码登录</span>
        </div>
        <!-- 短信登录的方式 -->
        <div class="content" v-if="isMode">
          <div class="content_phone">
            <i class="iconfont icon-shoujihao"></i>
            <input type="text" name="phone" class="public phone" v-model="phone" placeholder="手机号" maxlength="11">
            <button class="getcode" @click.prevent="getCode" v-if="isBtnShow" :class="{on: getPhoneTest}">获取验证码</button>
            <button class="getcode" disabled v-else>重新发送{{ codeTime }}s</button>
          </div>
          <div class="content_code">
            <i class="iconfont icon-yanzhengma"></i>
            <input type="text" name="code" v-model="code" class="public" placeholder="验证码">
          </div>
        </div>
        <!-- 密码登录的方式 -->
        <div class="content" v-else>
          <div class="content_phone">
            <i class="iconfont icon-zhanghao"></i>
            <input type="text" name="username" v-model="username" class="public" placeholder="请输入账号" maxlength="16">
          </div>
          <div class="content_phone">
            <i class="iconfont icon-mima"></i>
            <input type="password" name="password" v-model="password" class="public password" placeholder="请输入密码" maxlength="11" v-if="!isPwdShow">
            <input type="text" name="password" v-model="password" class="public password" placeholder="请输入密码" maxlength="11" v-else>
            <i class="iconfont icon-zhengyan" v-show="isPwdShow" @click="showPassword"></i>
            <i class="iconfont icon-biyan" v-show="!isPwdShow" @click="showPassword"></i>
          </div>
          <div class="content_code">
            <i class="iconfont icon-yanzhengma"></i>
            <input type="text" name="code" v-model="imgcode" class="public code" placeholder="图片验证码">
            <img class="svg_img" ref="captcha" src="http://localhost:3000/captcha/svg" @click="getSvgImage" alt="">
          </div>
        </div>

        <div class="checkbox">
          <span>已阅读并同意</span>
          <a href="#" >服务协议与隐私政策</a>
        </div>

        <div class="footer_btn">
          <input class="submit" type="submit" value="同意协议并登录" @click.prevent="submitLogin">
          <button>返回</button>
        </div>

        <toast v-show="isToastShow" :text='text'></toast>
      </form>
    </div>
  </div>
</template>

<script>
  import {getCode,loginOrRegister,loginOrRegisterByUsername} from '../../../src/network/login'
  import Toast from '../../../src/components/common/toast/Toast'
  export default {
    name: 'Login',
    components: {
      Toast
    },
    data() {
      return {
        isMode: true, // true 表示短信登录，false 表示密码登录
        isPwdShow: false,
        codeTime: 60, // 记录重新发送验证码的时间
        isBtnShow: true, // 记录按钮的显示
        timer: null,
        phone: '', // 记录输入的手机号
        isToastShow: false,
        text: '',
        code: '',
        username: '',
        password: '',
        imgcode: ''
      }
    },
    computed: {
      getPhoneTest() {
        return /^[1][3,4,5,7,8]\d{9}$/.test(this.phone)
      }
    },
    methods: {
      // 密码的显示和隐藏
      showPassword() {
        this.isPwdShow = !this.isPwdShow
      },
      // 获取验证码按钮的点击事件
      getCode() {
        if(this.getPhoneTest) {
          this.isBtnShow = false
          // 倒计时
          this.timer = setInterval(() => {
            this.codeTime --
            if(this.codeTime === 0) {
              clearInterval(this.timer)
              this.isBtnShow = true
              this.codeTime = 60
            }
          }, 1000)
          // 发送请求，获取验证码
          getCode(this.phone).then(res => {
            console.log(res)
            this.getToast(res.message,'您的验证码为:')
          })
        }
      },
      // 动态获取SVG图片验证码
      getSvgImage() {
        this.$refs.captcha.src = 'http://localhost:3000/captcha/svg?time=' + new Date()
      },
      submitLogin() {
        var data = {
          phone: this.phone,
          code: this.code,
          username: this.username,
          password: this.password,
          imgcode: this.imgcode
        }
        var $this = this
        if(this.isMode) {
          loginOrRegister(data).then(res => {
            if(res.success_code == 200) {
              // 注册或登录成功则让登录组件隐藏
              console.log(res.userInfo)
              $this.$store.commit('setUserInfo',{userInfo:res.userInfo})
              // $this.$router.replace('/profile')
            } else if(res.err_code == 500) {
            }
          })
        } else {
          loginOrRegisterByUsername(data).then(res => {
            if(res.success_code == 200) {
              // 注册或登录成功则让登录组件隐藏
              console.log(res.userInfo)
              $this.$store.commit('setUserInfo',{userInfo:res.userInfo})
            } else if(res.err_code == 1 || res.err_code == 0) {
              // 如果密码或验证码错误，则重新设置一个验证码，并把密码清空
              this.getSvgImage()
              this.password = ''
              this.imgcode = ''
              this.getToast(res.message)
              console.log(res)
            } else if(res.err_code == 500) {
              console.log(res)
            }
          })
        }
      },
      // 提示框内容
      getToast(message,init = '') {
        this.text = init + message
        this.isToastShow = true
        setTimeout(() => {
          this.isToastShow = false
        },3000)
      }
    }
  }
</script>

<style scoped>
  .login {
    width: 100vw;
    height: 98vh;
    position: fixed;
    background-color: #fff;
  }
  .main {
    padding-top: 60px;
  }
  .logo {
    background: url('https://static.yangkeduo.com/assets/img/login_footer.png') no-repeat;
    width: 150px;
    height: 55px;
    background-size: contain;
    margin: 0 auto 50px;
  }
  .form {
    width: 90%;
    height: 300px;
    margin: 0 auto;
  }
  .top_btn {
    display: flex;
    justify-content: space-around;
    height: 25px;
    line-height: 25px;
    padding: 0 60px;
    margin-bottom: 10px;
  }
  .top_btn .active {
    border-bottom: 2px solid #e02e24;
    color: #e02e24;
  }
  .top_btn span {
    font-size: 15px;
  }
  .content {
    text-align: center;
  }
  .content_phone, .content_code {
    margin-bottom: 10px;
    position: relative;
  }
  .public {
    box-sizing: border-box;
    width: 95%;
    height: 40px;
    border: 1px solid #ccc;
    border-radius: 6px;
    background-color: #f5f5f5;
    padding-left: 35px;
  }
  .icon-zhanghao, .icon-mima, .icon-shoujihao, .icon-yanzhengma {
    position: absolute;
    top: 50%;
    left: 20px;
    transform: translateY(-50%);
    color: #aba8a8;
  }
  .phone {
    padding-right: 90px;
  }
  .getcode {
    position: absolute;
    right: 13px;
    top: 50%;
    transform: translateY(-50%);
    height: 30px;
    background-color: #f5f5f5;
    border-radius: 6px;
    border: 1px solid #f5f5f5;
    font-size: 13px;
    color: #989696;
  }
  .checkbox {
    margin-left: 10px;
    margin-bottom: 40px;
  }
  .checkbox span {
    color: #989696;
  }
  .checkbox a {
    color: #666;
  }
  .footer_btn {
    text-align: center;
  }
  .submit {
    width: 95%;
    height: 40px;
    line-height: 40px;
    border: none;
    border-radius: 6px;
    background-color: #e02e24;
    text-align: center;
    font-size: 15px;
    color: #fff;
    margin-bottom: 10px;
  }
  .footer_btn button {
    width: 95%;
    height: 40px;
    line-height: 40px;
    border: none;
    border-radius: 6px;
    background-color: #fff;
    border: 1px solid #e02e24;
    text-align: center;
    font-size: 15px;
    color: #e02e24;
  }
  .icon-zhanghao, .icon-mima {
    font-size: 17px;
  }
  .password {
    padding-right: 40px;
  }
  .icon-zhengyan, .icon-biyan {
    position: absolute;
    right: 17px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 20px;
    color: #aba8a8;
  }
  .code {
    padding-right: 115px;
  }
  .on {
    background-color: #e02e24;
    padding: 0 5px;
    color: #fff;
    text-align: center;
  }
  .svg_img {
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    width: 33%;
  }
</style>