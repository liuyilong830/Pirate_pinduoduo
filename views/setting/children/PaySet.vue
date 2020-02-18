<template>
  <div class="payset">
    <div class="payset_item">
      <div class="item_left">
        <i class="iconfont icon-yaochi"></i>
        <span class="title">免密支付设置</span>
      </div>
      <div class="item_right">
        <i class="iconfont icon-youjiantou"></i>
      </div>
    </div>
    <div class="payset_item">
      <div class="item_left">
        <i class="iconfont icon-pindanshuoming"></i>
        <span class="title">免拼设置</span>
      </div>
      <div class="item_right">
        <i class="iconfont icon-youjiantou"></i>
      </div>
    </div>
    <div class="payset_item">
      <div class="item_left">
        <i class="iconfont icon-xiaoxijieshoushezhi"></i>
        <span class="title">消息接收设置</span>
      </div>
      <div class="item_right">
        <i class="iconfont icon-youjiantou"></i>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'PaySet',
  }
</script>

<style scoped>
  .payset {
    border-top: 10px solid #f5f5f5;
  }
  .payset_item {
    height: 55px;
    display: flex;
    justify-content: space-between;
    padding: 0 10px;
    border-bottom: 1px solid #f5f5f5;
  }
  .item_left, .item_right {
    height: 55px;
    line-height: 55px;
  }
  .iconfont {
    color: #7a7a7d;
    font-size: 24px;
    vertical-align: middle;
  }
  .icon-yaochi {
    font-size: 26px;
  }
  .icon-youjiantou {
    font-size: 18px;
  }
  .title {
    color: #151516;
    font-size: 16px;
  }
</style>