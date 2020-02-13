<template>
  <div class="order_info">
    <div class="my_order">
      <span class="my_order_font">我的订单</span>
      <span>查看全部></span>
    </div>
    <div class="order_icon">
      <div class="icon_item">
        <i class="iconfont icon-daifukuan"></i>
        <span>待付款</span>
      </div>
      <div class="icon_item">
        <i class="iconfont icon-daifenxiang-shiyan"></i>
        <span>待分享</span>
      </div>
      <div class="icon_item">
        <i class="iconfont icon-daifahuo"></i>
        <span>待发货</span>
      </div>
      <div class="icon_item">
        <i class="iconfont icon-daishouhuo1"></i>
        <span>待收货</span>
      </div>
      <div class="icon_item">
        <i class="iconfont icon-daipingjia"></i>
        <span>待评价</span>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'OrderInfo',
  }
</script>

<style scoped>
  .order_info {
    padding-top: 15px;
    box-sizing: border-box;
    width: 100vw;
  }
  .my_order {
    display: flex;
    height: 30px;
    justify-content: space-between;
    color: #ccc;
    align-items: center;
    margin-bottom: 5px;
    padding: 0 15px;
  }
  .my_order_font {
    font-size: 18px;
    color: #484747;
  }
  .order_icon {
    display: flex;
    height: 65px;
    padding-bottom: 10px;
    border-bottom: 7px solid #eaeaea;
  }
  .icon_item {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    color: #58595b;
  }
  .icon_item .iconfont {
    font-size: 24px;
  }
</style>