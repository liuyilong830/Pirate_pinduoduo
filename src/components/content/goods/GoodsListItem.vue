<template>
  <div class="goods_item" @click="itemClick">
    <div class="item_img">
      <img :src="goodsItem.image" alt="">
    </div>
    <div class="information">
      <div class="info_top">
        <div class="title">
          <img v-if="goodsItem.icon" :src="goodsItem.icon" alt="">
          <span>{{ goodsItem.title }}</span>
        </div>
        <div class="shop" v-if="goodsItem.shop">
          <span>{{ goodsItem.shop }}</span>
        </div>
        <div class="welfare">
          <div class="webfares" v-if="goodsItem.welfare">
            <div class="welfare_item" v-for="(item,index) in getWelfare" :key="index">{{ item }}</div>
          </div>
          <div class="others">
            <div class="other_price">
              ￥<span class="price">{{ goodsItem.price }}</span>
              <span class="count">{{ goodsItem.count }}</span>
              <img class="first_img" :src="goodsItem.second_fan" alt="">
              <img :src="goodsItem.first_fan" alt="">
            </div>
          </div>
        </div>
      </div>
      <div class="info_bottom" v-if="goodsItem.Best_seller">
        <div>
          <span class="best_seller">{{ goodsItem.Best_seller }}</span>
          <span>></span> 
        </div>
      </div>
    </div>
    <!-- <div class="solid"></div> -->
  </div>
</template>

<script>
  export default {
    name: 'GoodsListItem',
    props: {
      goodsItem: {
        type: Object,
        default() {
          return {}
        }
      }
    },
    data() {
      return {
        welfare: []
      }
    },
    methods: {
      itemClick() {
        var id = this.goodsItem.sid
        this.$router.push('/detail/' + id)
      }
    },
    computed: {
      getWelfare() {
        return this.welfare = this.goodsItem.welfare.split(',')
      }
    },
  }
</script>

<style scoped>
  .goods_item {
    width: 100%;
    height: 170px;
    display: flex;
    /* position: relative; */
  }
  .item_img {
    flex: 50%;
    margin: 5px;
    overflow: hidden;
    border-radius: 3px;
  }
  .item_img img {
    width: 100%;
  }
  .information {
    flex: 50%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding-bottom: 5px;
  }
  .title img {
    width: 22%;
    vertical-align: middle;
  }
  .title span {
    word-break: break-all;
    font-size: 13px;
  }
  .shop span {
    display: inline-block;
    background-image: linear-gradient(135deg,#e9c68c,#f8e2bd 50%,#eaca93 0,#eaca93);
    border-radius: 3px;
    font-size: 13px;
  }
  .webfares {
    display: flex;
    margin-bottom: 6px;
  }
  .welfare_item {
    font-size: 12px;
    background: rgba(255,87,6, 0.08);
    color: #FF5706;
    border-radius: 3px;
    margin-right: 5px;
  }
  .info_top {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    flex: 1;
  }
  .info_bottom {
    /* flex: 1; */
    display: flex;
    align-items: flex-end;
  }
  .info_bottom div {
    width: 100%;
    height: 30px;
    line-height: 30px;
    background: #fdf4f4;
    color: #e02e24;
    border-radius: 6px;
  }
  .info_bottom .best_seller {
    float: left;
    padding-left: 8px;
  }
  .info_bottom div span {
    float: right;
    padding-right: 5px;
  }
  .other_price {
    color: #ce0606;
  }
  .other_price {
    letter-spacing: -1px;
  }
  .price {
    font-size: 18px;
    font-weight: 700;
  }
  .count {
    color: #989090;
    font-size: 13px;
  }
  .other_price img {
    width: 12%;
    border-radius: 50%;
    float: right;
  }
  .solid {
    height: 1px;
    width: 50%;
    background-color: #efe5e5;
    position: absolute;
    bottom: 0px;
    right: 0px;
  }
</style>