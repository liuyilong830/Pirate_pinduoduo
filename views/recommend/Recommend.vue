<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_recommend">
      Recommend
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'Recommend',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_recommend {
    height: calc(100vh - 49px);
  }
</style>