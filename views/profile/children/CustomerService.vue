<template>
  <div class="customer_service">
    <div class="icon_item">
      <i class="iconfont icon-YHJ-copy"></i>
      <span>优惠券</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-shangpinshoucang"></i>
      <span>商品收藏</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-lishiliulan"></i>
      <span>历史浏览</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-tuikuanshouhou"></i>
      <span>退款售后</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-wodepingjia-anzhuo"></i>
      <span>我的评价</span>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'CustomerService',
  }
</script>

<style scoped>
  .customer_service {
    display: flex;
    height: 70px;
    padding: 10px 0;
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
    color: red;
  }
</style>