<template>
  <div>
    <div class="base_seller" v-if="baseSeller">
      <img :src="bseller.base_seller_img" alt="">
      <span class="base_seller_title">{{ bseller.base_seller}}</span>
      <span class="base_seller_num">{{ bseller.base_seller_num}}</span>名
    </div>
  </div>
</template>

<script>
  export default {
    name: 'BaseSeller',
    props: {
      bseller: {
        type: Object,
        default() {
          return {}
        }
      }
    },
    computed: {
      baseSeller() {
        var data = this.bseller
        return data.base_seller && data.base_seller_img && data.base_seller_num
      }
    }
  }
</script>

<style scoped>
  .base_seller {
    height: 40px;
    box-sizing: border-box;
    padding: 0 10px;
    line-height: 40px;
  }
  .base_seller img {
    width: 5%;
    vertical-align: middle;
  }
  .base_seller span {
    color: #58595b;
  }
  .base_seller .base_seller_num {
    font-size: 15px;
    font-weight: 700;
    color: red;
  }
</style>