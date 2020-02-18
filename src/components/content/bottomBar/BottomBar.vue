<template>
  <div class="bottom_bar">
    <div class="icon">
      <div class="more">
        <i class="iconfont icon-gengduo"></i>
        <span>更多</span>
      </div>
      <div class="collection">
        <i class="iconfont icon-shoucang"></i>
        <span>收藏</span>
      </div>
      <div class="constomer_service">
        <i class="iconfont icon-icon132"></i>
        <span>客服</span>
      </div>
    </div>
    <div class="expensive_price">
      <span>￥{{ prices.expensive_price }}</span>
      <span>单独购买</span>
    </div>
    <div class="spell_list">
      <span>￥{{ prices.new_price }}</span>
      <span>发起拼单</span>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'BottomBar',
    props: {
      prices: {
        type: Object,
        default() {
          return {}
        }
      },
      payData: {
        type: Object,
        default() {
          return {}
        }
      }
    }
  }
</script>

<style scoped>
  .bottom_bar {
    height: 50px;
    display: flex;
    text-align: center;
    background-color: #fff;
    border-top: 1px solid #ccc;
    box-shadow: 0 -1px 3px #c7c4c4;
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 9;
  }
  .icon {
    flex: 40%;
    display: flex;
    color: #9c9797;
  }
  .iconfont {
    font-size: 25px;
  }
  .icon-shoucang {
    font-size: 24px;
  }
  .icon-icon132 {
    font-size: 23px;
  }
  .expensive_price, .spell_list {
    flex: 30%;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    color: #fff;
    padding: 10px 0;
  }
  .expensive_price {
    background-color: #f3aba7;
  }
  .spell_list {
    background-color: #e02e24;
  }
  .more, .collection, .constomer_service {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    padding-bottom: 5px;
  }
</style>