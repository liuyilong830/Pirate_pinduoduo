<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_chat">
      聊天
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../src/components/common/better-scroll/BScroll'
  export default {
    name: 'Chat',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_chat {
    height: calc(100vh - 49px);
  }
</style>