<template>
  <div v-if="Object.keys(iteminfo) !== null">
    <div class="price_and_count">
      <div class="prices">
        <span class="public">
          <i class="aaa">￥</i>
          <span class="price">{{ iteminfo.price }}</span>
        </span>
        <span class="old_price">8天后恢复￥{{ iteminfo.old_price }}起</span>
      </div>
      <span class="count">{{ iteminfo.count }}</span>
    </div>
    <div class="title_and_img">
      <img v-if="iteminfo.shop_img" :src="iteminfo.shop_img" alt="">
      <span class="title">{{ iteminfo.title }}</span>
      <span v-if="iteminfo.welfare">
        <span class="only_welfare" v-for="(item,index) in arrWelfare" :key="index">{{ item }} </span>
      </span>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'ItemCenter',
    props: {
      iteminfo: {
        type: Object,
        default() {
          return {}
        }
      }
    },
    computed: {
      arrWelfare() {
        return this.iteminfo.welfare.split(',')
      }
    }
  }
</script>

<style scoped>
  .price_and_count {
    padding: 8px 10px 0;
    display: flex;
    height: 40px;
    box-sizing: border-box;
  }
  .prices {
    flex: 60%;
  }
  .public {
    color: red;
    font-weight: 700;
  }
  .aaa {
    font-size: 10px;
  }
  .price {
    font-size: 27px;
  }
  .old_price {
    display: inline-block;
    margin-left: 10px;
    background-color: yellow;
    vertical-align: top;
    margin-top: 8px;
    line-height: 21px;
  }
  .count {
    flex: 40%;
    text-align: right;
    box-sizing: border-box;
    padding-top: 9px;
    color: #58595b;
  }
  .title_and_img {
    padding: 5px 10px 0;
  }
  .title_and_img img {
    width: 12%;
    vertical-align: middle;
  }
  .title_and_img .title {
    font-weight: 700;
    font-size: 15px;
  }
  .only_welfare {
    border: 1px solid #84d20e;
    border-radius: 4px;
    color: #84d20e;
    display: inline-block;
    margin-left: 3px;
  }
  
</style>