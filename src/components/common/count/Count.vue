<template>
  <div class="count">
    <span class="count_title"><slot name="count_title">数量</slot></span>
    <div class="computed_count">
      <div class="iconfont icon-jian2 public" :class="{on: count==minCount}" @click="decreaseClick"></div>
      <span class="public"><slot name="count">{{count}}</slot></span>
      <div class="iconfont icon-jia public" :class="{on: count==maxCount}" @click="increaseClick"></div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Count',
    props: {
      minCount: {
        type: Number,
        default: 0
      },
      maxCount: {
        type: Number,
        default: 10
      },
      count: {
        type: Number,
        default: 0
      }
    },
    methods: {
      decreaseClick() {
        this.$emit('decreaseClick')
      },
      increaseClick() {
        this.$emit('increaseClick')
      }
    }
  }
</script>

<style scoped>
  .count {
    height: 50px;
    padding: 0 10px;
    box-sizing: border-box;
    background-color: #fff;
    border-bottom: 1px solid #f5f5f5;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: #545454;
  }
  .computed_count {
    display: flex;
    width: 90px;
    height: 25px;
    line-height: 25px;
    justify-content: space-around;
    text-align: center;
  }
  .icon-jian2, .icon-jia {
    color: #545454;
    border-radius: 4px;
    background-color: #cccccc;
  }
  .on {
    background-color: #ececec;
  }
  .public {
    flex: 1;
  }
</style>