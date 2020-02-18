<template>
  <div class="problem">
    <div class="problem_item">
      <div class="item_left">
        <i class="iconfont icon-changjianwenti"></i>
        <span class="title">常见问题</span>
      </div>
      <div class="item_right">
        <i class="iconfont icon-youjiantou"></i>
      </div>
    </div>
    <div class="problem_item">
      <div class="item_left">
        <i class="iconfont icon-yijianfankui"></i>
        <span class="title">意见反馈</span>
      </div>
      <div class="item_right">
        <i class="iconfont icon-youjiantou"></i>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Problem',
  }
</script>

<style scoped>
  .problem {
    border-top: 10px solid #f5f5f5;
  }
  .problem_item {
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
  .icon-changjianwenti {
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