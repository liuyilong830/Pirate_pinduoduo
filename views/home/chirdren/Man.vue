<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_man">
      Man
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'Man',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_man {
    height: calc(100vh - 49px - 40px);
  }
</style>