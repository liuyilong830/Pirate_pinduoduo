<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_women">
      Women
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'Women',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_women {
    height: calc(100vh - 49px - 40px);
  }
</style>