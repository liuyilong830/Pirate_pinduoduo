<template>
  <div class="subsidy">
    <div class="subsidy_top">
      <div class="top_left">
        <img :src="subsidy.icon" alt="">
        <span class="title">{{ subsidy.title }}</span>
        <div class="solid"></div>
        <span class="guarantee">{{ subsidy.guarantee }}</span>
      </div>
      <div class="top_right">
        <span>{{ subsidy.all_item_title }} ></span>
      </div>
    </div>
    <div class="goods">
      <div class="goods_left">
        <img :src="subsidy.base_img" alt="">
      </div>
      <div class="goods_right">
        <div class="goodsitem" v-for="(item,index) in subsidy.hotItem" :key="index">
          <img :src="item.image" alt="">
          <div class="brand">{{ item.brand }}</div>
          <div class="other">
            <span class="type">{{ item.type }}</span>
            <span class="price">￥ {{ item.price }}</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Subsidy',
    props: {
      subsidy: {
        type: Object,
        default() {
          return {}
        }
      }
    }
  }
</script>

<style scoped>
  .subsidy {
    border-bottom: 7px solid #ccc5c554;
    width: 100vw;
    height: 185px;
    box-sizing: border-box;
    padding: 0 10px;
  }
  .subsidy_top {
    display: flex;
    /* height: 30px; */
    line-height: 30px;
    color: #8e8b8b;
    margin-bottom: 5px;
    justify-content: space-between;
  }
  .top_left img {
    width: 15%;
    vertical-align: middle;
  }
  .top_left .title {
    font-weight: 600;
    color: #333;
    font-size: 16px;
  }
  .solid {
    display: inline-block;
    width: 1px;
    height: 11px;
    background-color: #bdb1b1;
    margin: 0 5px;
  }
  .goods {
    display: flex;
    justify-content: space-between;
  }
  .goods_left {
    flex: 50%;
    margin-top: 2px;
  }
  .goods_left img {
    width: 100%;
  }
  .goods_right {
    flex: 50%;
    display: flex;
    justify-content: space-around;
  }
  .goodsitem {
    text-align: center;
    position: relative;
  }
  .goodsitem img {
    width: 95%;
  }
  .brand {
    width: 40px;
    height: 20px;
    background-color: orange;
    color: #fff;
    border-radius: 6px;
    position: absolute;
    top: 63%;
    left: 5px;
  }
  .other {
    margin-top: 12px;
  }
  .type, .price {
    font-size: 13px;
    color: #d20b0b;
  }
</style>