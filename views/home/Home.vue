<template>
  <div>
    <top-scroll></top-scroll>
    <router-view></router-view>
  </div>
</template>

<script>
  import TopScroll from '../../src/components/common/better-scroll/TopScroll'

  export default {
    name: 'Home',
    data() {
      return {
        
      }
    },
    components: {
      TopScroll
    },
    beforeRouteLeave (to, from, next) {
      // 因为 home 路由离开之后只有一种情况，那就是下面 tabbar 中发生了切换，
      // 所以我们只需要将 home 组件离开之前的活跃路由的path记录下来，保存在 matched[0].redirect 中即可
      // 当然，仅仅这样也是不行的，我们还需要在路由配置的地方(router => index.js)通过函数来动态配置 redirect 属性
      from.matched[0].redirect = from.path
      next()
    }
  }
</script>

<style scoped>
  .item {
    width: 40px;
    height: 30px;
    line-height: 30px;
  }
</style>