<template>
  <div class="other">
    <div class="icon_item">
      <i class="iconfont icon-hongbao"></i>
      <span>新人红包</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-icon-test-copy"></i>
      <span>多多果园</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-kanjia"></i>
      <span>砍价免费拿</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-hongbao001"></i>
      <span>天天领现金</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-mofabang"></i>
      <span>多多爱消除</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon--nainiu"></i>
      <span>多多牧场</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-shipin"></i>
      <span>多多视频</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-huoche"></i>
      <span>火车票</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-shouhuodizhi"></i>
      <span>收货地址</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-kefu"></i>
      <span>官方客服</span>
    </div>
    <div class="icon_item">
      <i class="iconfont icon-shezhi"></i>
      <span>设置</span>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Other',
  }
</script>

<style scoped>
  .other {
    display: flex;
    flex-wrap: wrap;
    align-content: center;
  }
  .icon_item {
    width: 20vw;
    height: 75px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    color: #58595b;
  }
  .icon_item .iconfont {
    font-size: 24px;
    color: #ffd07a;
  }
</style>