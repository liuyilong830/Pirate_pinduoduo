<template>
  <div>
    <div class="coupon" v-if="coupon">
      <div class="coupon_item">
        <span class="item" v-for="(item,index) in arrCoupon" :key="index" :class="{first: index===0}">{{ item }}</span>
      </div>
      <span class="jiantou">></span>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Coupon',
    props: {
      coupon: {
        type: String,
        default: ''
      }
    },
    computed: {
      arrCoupon() {
        return this.coupon.split(',')
      }
    }
  }
</script>

<style scoped>
  .coupon {
    display: flex;
    justify-content: space-between;
    box-sizing: border-box;
    height: 40px;
    line-height: 40px;
    border-bottom: 1px solid #ccc;
  }
  .jiantou {
    padding-right: 5px;
    color: #ccc;
  }
  .coupon_item {
    display: flex;
    flex: 60%;
    justify-content: space-around;
    margin-right: 10px;
  }
  .coupon_item .item {
    font-size: 13px;
    color: #e02e24;
    box-sizing: border-box;
    margin: 9px 0;
    line-height: 20px;
    border: 1px solid #e02e24;
    border-radius: 4px;
  }
  .coupon_item .first {
    background-color: #e02e24;
    color: #fff;
  }
</style>