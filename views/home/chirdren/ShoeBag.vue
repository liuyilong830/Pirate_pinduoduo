<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_shoeBag">
      ShoeBag
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'ShoeBag',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_shoeBag {
    height: calc(100vh - 49px - 40px);
  }
</style>