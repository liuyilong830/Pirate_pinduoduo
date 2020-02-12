<template>
  <div class="list_public">
    <ul class="search_list">
      <li 
      class="list_item" 
      v-for="(item,index) in list" 
      :key="index" 
      @click="itemClick(index,item.search_id)"
      :class="{active: index === currentIndex}">
        <div :class="{active: index === currentIndex}">{{ item.name }}</div>
      </li>
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'SearchList',
    data() {
      return {
        currentIndex: 0
      }
    },
    props: {
      list: {
        type: Array,
        default() {
          return []
        }
      }
    },
    methods: {
      itemClick(index,sid) {
        this.currentIndex = index
        this.$emit('listItemClick',index,sid)
      }
    }
  }
</script>

<style scoped>
  .list_public {
    background-color: #f7f7f7;
  }
  .search_list {
    width: 100%;
    text-align: center;
  }
  .list_item {
    height: 50px;
    color: #666;
    display: flex;
    align-items: center;
  }
  .list_item div {
    width: 85px;
    height: 30px;
    line-height: 30px;
    font-size: 15px;
    border-left: 5px solid #f7f7f7;
  }
  .active {
    background-color: #fff;
  }
  .list_item .active {
    border-left: 5px solid orange;
    color: orange;
  }
</style>