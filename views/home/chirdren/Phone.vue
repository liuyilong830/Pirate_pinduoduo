<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' class="wrapper_phone">
      Phone
    </b-scroll>
  </div>
</template>

<script>
  import BScroll from '../../../src/components/common/better-scroll/BScroll'

  export default {
    name: 'Phone',
    components: {
      BScroll
    }
  }
</script>

<style scoped>
  .wrapper_phone {
    height: calc(100vh - 49px - 40px);
  }
</style>