<template>
  <div>
    <div class="welfares" v-if="welfares">
      <div class="welfares_item">
        <div class="dot_item" v-for="(item,index) in arrWelfares" :key="index">
          <span class="dot" v-if="index != 0"></span>
          <span class="item">{{ item }}</span>
        </div>
      </div>
      <span class="jiantou">></span>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Welfares',
    props: {
      welfares: {
        type: String,
        default: ''
      }
    },
    computed: {
      arrWelfares() {
        return this.welfares.split(',')
      }
    }
  }
</script>

<style scoped>
  .welfares {
    display: flex;
    justify-content: space-between;
    box-sizing: border-box;
    height: 40px;
    line-height: 40px;
    border-bottom: 1px solid #ccc;
  }
  .welfares_item{
    display: flex;
    flex: 60%;
    justify-content: space-around;
    margin-right: 30px;
  }
  .dot_item {
    position: relative;
    line-height: 40px;
  }
  .dot_item .item {
    font-size: 13px;
    color: #58595b;
  }
  .dot {
    width: 2px;
    height: 2px;
    display: inline-block;
    background-color: #000;
    border-radius: 50%;
    position: absolute;
    top: 50%;
    left: -5px;
  }
  .jiantou {
    padding-right: 5px;
    color: #ccc;
  }
</style>