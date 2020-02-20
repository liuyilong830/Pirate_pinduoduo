<template>
  <div class="pay_mode">
    <div class="wechat pay" @click="changeWechat">
      <span>
        <i class="iconfont icon-weixin"></i>
        <span class="text">微信支付</span>
      </span>
      <i class="iconfont" :class="{'icon-gouSolid': change==0}"></i>
    </div>
    <div class="Alipay pay" @click="changeAlipay">
      <span>
        <i class="iconfont icon-umidd17"></i>
        <span class="text">支付宝</span>
      </span>
      <i class="iconfont" :class="{'icon-gouSolid': change==1}"></i>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'PayMode',
    data() {
      return {
        change: 0
      }
    },
    methods: {
      changeWechat() {
        this.change = 0
      },
      changeAlipay() {
        this.change = 1
      }
    }
  }
</script>

<style scoped>
  .pay {
    height: 50px;
    box-sizing: border-box;
    padding: 0 10px;
    background-color: #fff;
    border-bottom: 1px solid #f5f5f5;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .icon-weixin {
    font-size: 23px;
    color: #52c523;
  }
  .icon-umidd17 {
    color: #00adff;
    font-size: 25px;
    vertical-align: middle;
  }
  .text {
    font-size: 16px;
  }
  .icon-gouSolid {
    color: #52c523;
    font-size: 18px;
  }
</style>