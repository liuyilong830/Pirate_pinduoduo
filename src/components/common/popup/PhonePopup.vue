<template>
  <div>
    <div class="phone_popup">
      <div class="content">
        <div class="content_top">
          <span>手机绑定</span>
          <div class="close" @click="closePopup">
            <i class="iconfont icon-ca"></i>
          </div>
        </div>
        <div class="contain">
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
          <div class="footer_btn">
            <input class="submit" type="submit" value="绑定到此手机号" @click.prevent="bindingClick">
          </div>
        </div>
      </div>
    </div>
    <toast v-show="isToastShow" :text='text'></toast>
  </div>
</template>

<script>
  import {getCode} from '../../../../src/network/login'
  import {getUserByPhone} from '../../../../src/network/profile'
  import Toast from '../../../../src/components/common/toast/Toast'
  export default {
    name: 'PhonePopup',
    components: {
      Toast
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    data() {
      return {
        phone: '',
        code: '',
        isBtnShow: true,
        codeTime: 60,
        text: '',
        isToastShow: false
      }
    },
    computed: {
      getPhoneTest() {
        return /^[1][3,4,5,7,8]\d{9}$/.test(this.phone)
      }
    },
    methods: {
      closePopup() {
        this.$emit('click',false)
      },
      getCode() {
        if(this.getPhoneTest) {
          getUserByPhone(this.phone).then(res => {
            if(res.success_code === 200) {
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
              // 发送短信验证码
              getCode(this.phone).then(res => {
                console.log(res)
                this.getToast(res.message,'您的验证码为:')
              }).catch(err => {
                console.log(err)
              })
            } else {
              this.getToast(res.message)
            }
          }).catch(err => {
            console.log(err)
          })
          
          // 发送请求，获取验证码
          /* getCode(this.phone).then(res => {
            console.log(res)
            this.getToast(res.message,'您的验证码为:')
          }).catch(err => {
            console.log(err)
          }) */
        }
      },
      // 提示框内容
      getToast(message,init = '') {
        this.text = init + message
        this.isToastShow = true
        setTimeout(() => {
          this.isToastShow = false
        },3000)
      },
      bindingClick() {
        this.$emit('update:phone', this.phone)
        this.$emit('confirmPhone',this.phone)
        this.closePopup()
      }
    }
  }
</script>

<style scoped>
  .phone_popup {
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, .74);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 999;
  }
  .content {
    width: 75vw;
    background-color: #fff;
    border-radius: 6px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
  }
  .content_top {
    position: relative;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    box-sizing: border-box;
    text-align: center;
    box-shadow: 0 1px 3px #ccc;
  }
  .content_top span {
    font-size: 18px;
  }
  .close {
    position: absolute;
    right: -12px;
    top: -14px;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    text-align: center;
    line-height: 25px;
    background-color: #e8e8e8;
  }
  .iconfont {
    font-size: 13px;
  }
  .contain {
    box-sizing: border-box;
    padding: 10px;
  }
  .content_phone, .content_code {
    text-align: center;
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
  .icon-shoujihao, .icon-yanzhengma {
    position: absolute;
    top: 50%;
    left: 20px;
    transform: translateY(-50%);
    color: #aba8a8;
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
  .on {
    background-color: #e02e24;
    padding: 0 5px;
    color: #fff;
    text-align: center;
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
</style>