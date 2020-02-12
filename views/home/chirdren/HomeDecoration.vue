<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_homeDecoration">
      HomeDecoration
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'HomeDecoration',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_homeDecoration {
    height: calc(100vh - 49px - 40px);
  }
</style>