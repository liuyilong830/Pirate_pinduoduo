<template>
  <div class="pay">
    <div class="left">
      <span>实付款:</span>
      <span class="price">￥{{getPayMoney}}</span>
      <span class="freight">免运费</span>
    </div>
    <div class="right">立即支付</div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  export default {
    name: 'Pay',
    computed: {
      ...mapGetters(['getPayMoney'])
    }
  }
</script>

<style scoped>
  .pay {
    width: 100vw;
    height: 50px;
    position: fixed;
    bottom: 0;
    background-color: #fff;
    display: flex;
  }
  .left {
    flex: 60%;
    box-sizing: border-box;
    padding: 0 10px;
    text-align: right;
    line-height: 50px;
  }
  .left span {
    font-size: 15px;
  }
  .left .price {
    font-size: 21px;
    color: #e02e24;
  }
  .freight {
    color: #e02e24;
  }
  .right {
    flex: 40%;
    background-color: #e02e24;
    color: #fff;
    font-size: 18px;
    text-align: center;
    line-height: 50px;
  }
</style>