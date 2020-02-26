<template>
  <div class="shop" v-if="Object.keys(shopinfo) !== null">
    <div class="shop_info">
      <img :src="shopinfo.shop_icon" alt="">
      <div class="info">
        <span class="shop_name">{{ shopinfo.shop? shopinfo.shop : '商家暂未提供' }}</span>
        <div class="goods">
          <span class="goods_count">商品数量: {{ shopinfo.commodity }}</span>
          <span>{{ shopinfo.count }}</span>
        </div>
      </div>
    </div>
    <span class="shop_other">进店逛逛</span>
  </div>
</template>

<script>
  export default {
    name: 'Shop',
    props: {
      shopinfo: {
        type: Object,
        default() {
          return {}
        }
      }
    }
  }
</script>

<style scoped>
  .shop {
    border-bottom: 7px solid #f1f0f0;
    display: flex;
    justify-content: space-between;
    padding: 10px;
  }
  .shop_info {
    height: 40px;
    display: flex;
    flex: 70%;
  }
  .shop_info img {
    width: 13%;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  .info {
    margin-left: 10px;
  }
  .shop_name {
    letter-spacing: 1px;
  }
  .goods {
    color: #58595b;
  }
  .shop_other {
    box-sizing: border-box;
    margin: 7px 0;
    border: 1px solid #9c9c9c;
    border-radius: 4px;
    line-height: 24px;
    padding: 0 4px;
  }
</style>