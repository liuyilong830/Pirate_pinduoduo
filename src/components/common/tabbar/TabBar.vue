<template>
  <div class="tabbar">
    <slot></slot>
  </div>
</template>

<script>
  import TabBarItem from './TabBarItem'
  export default {
    name: 'TabBar',
    components: {
      TabBarItem
    }
  }
</script>

<style scoped>
  .tabbar {
    display: flex;
    height: 49px;
    background-color: #fff;
    /* border-top: 1px solid #ccc; */
    box-shadow: 0 -1px 3px #e8ddddeb;
  }
  
</style>