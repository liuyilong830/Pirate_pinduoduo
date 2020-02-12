<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_electric">
      Electric
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'Electric',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_electric {
    height: calc(100vh - 49px - 40px);
  }
</style>