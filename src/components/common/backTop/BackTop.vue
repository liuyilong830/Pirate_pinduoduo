<template>
  <div class="back_top">
    <i class="iconfont icon-huidaodingbu1"></i>
    <span>顶部</span>
  </div>
</template>

<script>
  export default {
    name: 'BackTop',
  }
</script>

<style scoped>
  .back_top {
    width: 40px;
    height: 40px;
    background-color: #fff;
    border-radius: 50%;
    text-align: center;
    position: fixed;
    bottom: 80px;
    right: 10px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    border: 1px solid #ccc;
    background-color: rgba(251,251,251, 0.86)
  }
</style>