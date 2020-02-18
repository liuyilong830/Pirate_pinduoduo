<template>
  <div class="resident">
    <div class="resident_item">
      <div class="item_left">
        <i class="iconfont icon-shangjiaruzhu-copy"></i>
        <span class="title">商家免费入驻</span>
      </div>
      <div class="item_right">
        <i class="iconfont icon-youjiantou"></i>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Resident',
  }
</script>

<style scoped>
  .resident {
    border-top: 10px solid #f5f5f5;
  }
  .resident_item {
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