<template>
  <div class="goods_list">
    <goods-list-item v-for="(item,index) in goodsList" :key="index" :goods-item='item'></goods-list-item>
  </div>
</template>

<script>
  import GoodsListItem from './GoodsListItem'
  export default {
    name: 'GoodsList',
    components: {
      GoodsListItem
    },
    props: {
      goodsList: {
        type: Array,
        default() {
          return []
        }
      }
    }
  }
</script>

<style scoped>
  .goods_list {
    padding-left: 2px;
    padding-right: 6px;
  }
</style>