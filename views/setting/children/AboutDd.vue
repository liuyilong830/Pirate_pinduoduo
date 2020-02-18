<template>
  <div class="about_dd">
    <div class="about_dd_item">
      <div class="item_left">
        <i class="iconfont icon-guanyu"></i>
        <span class="title">关于拼多多</span>
      </div>
      <div class="item_right">
        <i class="iconfont icon-youjiantou"></i>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'AboutDd',
  }
</script>

<style scoped>
  .about_dd {
    border-top: 10px solid #f5f5f5;
  }
  .about_dd_item {
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
    font-size: 25px;
    vertical-align: middle;
  }
  .icon-youjiantou {
    font-size: 18px;
  }
  .title {
    color: #151516;
    font-size: 16px;
  }
</style>