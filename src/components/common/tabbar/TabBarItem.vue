<template>
  <div class="tabbar_item" @click="tabbarClick" :style="isActiveColor">
    <slot name="img"></slot>
    <div class="tabbar_item_text">
      <slot name="text"></slot>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'TabBarItem',
    computed: {
      isActive() {
        return this.$route.path.includes(this.href)
      },
      isActiveColor() {
        return this.isActive? {color: this.activeColor } : {}
      }
    },
    methods: {
      // 每个tabbar的点击事件
      tabbarClick() {
        this.$router.replace(this.href)
        // 因为路由懒加载的问题，这里不能直接通过 this.$route 来获取当前活动的路由，因为路由懒加载造成上面的步骤是个异步的
        /* console.log(this.$route)
        console.log(this.href) */
      }
    },
    props: {
      href: {
        type: String,
        default: ''
      },
      activeColor: {
        type: String,
        default: 'red'
      }
    },
  }
</script>

<style scoped>
  .tabbar_item {
    flex: 1;
    display: flex;
    text-align: center;
    flex-direction: column;
    justify-content: space-between;
    color: #5a5454;
  }
  .tabbar_item i {
    font-size: 24px;
    padding-top: 2px;
  }
  .tabbar_item_text {
    font-size: 14px;
    padding-bottom: 2px;
  }
</style>