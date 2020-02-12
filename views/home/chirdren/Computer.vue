<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_computer">
      Computer
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'Computer',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_computer {
    height: calc(100vh - 49px - 40px);
  }
</style>