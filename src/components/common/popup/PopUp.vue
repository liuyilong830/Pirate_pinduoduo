<template>
  <div v-if='content.length !== 0'>
    <div class="popup" v-show="change">
      <transition name='mack'>
        <div class="popup_content" v-show='change'>
          <div class='popup_top'>
            <div>{{content[0].title}}</div>
            <i class="iconfont icon-guanbi" @click="guanbiClick"></i>
          </div>
          <b-scroll class="wrapper_popup">
            <!-- 展示优惠卷的弹出层信息 -->
            <div class='content' v-if='flag'>
              <div class="coupon_title">领取优惠卷</div>
              <div class="coupon_content">
                <div class="coupon_1" v-for="(item,index) in content" :key="index">
                  <span class="shop_coupon">店铺卷</span>
                  <div class="coupon_price">
                    <span class="icon">￥</span>
                    <span class="price">{{ item.coupon_price }}</span>
                  </div>
                  <div class="time_and_condition">
                    <span>{{ item.condition }}</span>
                    <span>{{ item.time }}</span>
                  </div>
                  <div class="coupon_btn">
                    <div>领取</div>
                  </div>
                </div>
                <div></div>
                <div></div>
              </div>
            </div>
            <!-- 展示福利的弹出层信息 -->
            <div class='content' v-else>
              <div class='welfare_1' v-for='(item,index) in content' :key='index'>
                <div class='dot_and_title'>
                  <span class='dot'></span>
                  <span class='title'>{{ item.item }}</span>
                </div>
                <div class='welfare_content'>{{ item.content }}</div>
              </div>
            </div>
          </b-scroll>
        </div>
      </transition>
    </div>
  </div>
</template>

<script>
  import BScroll from '../better-scroll/BScroll'
  export default {
    name: 'PopUp',
    components: {
      BScroll
    },
    props: {
      change: {
        type: Boolean,
        default: false
      },
      flag: {
        type: Boolean,
        default: false
      },
      content: {
        type: Array,
        default() {
          return []
        }
      }
    },
    methods: {
      guanbiClick() {
        this.$emit('closePopUp')
      }
    }
  }
</script>

<style scoped>
  .popup {
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, .74);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 999;
  }
  .popup_content {
    background-color: #fff;
    width: 100vw;
    height: 390px;
    box-sizing: border-box;
    position: absolute;
    bottom: 0px;
  }
  .mack-enter-active, .mack-leave-active {
    transition: all .5s;
    bottom: 0px;
  }
  .mack-enter, .mack-leave-to {
    bottom: -390px;
  }
  .popup_top {
    height: 40px;
    line-height: 40px;
    position: relative;
    border-bottom: 1px solid #eaeaea;
  }
  .popup_top div {
    text-align: center;
    font-size: 16px;
  }
  .iconfont {
    position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    color: #ccc;
  }
  .wrapper_popup {
    height: 350px;
  }
  .content {
    padding: 20px 15px;
  }
  .welfare_1 {
    margin-bottom: 10px;
  }
  .dot {
    width: 4px;
    height: 4px;
    background-color: #d6d3d3;
    border-radius: 50%;
    display: inline-block;
    vertical-align: middle;
    margin-right: 3px;
  }
  .title {
    font-size: 15px;
  }
  .welfare_content {
    color: #9c9c9c;
    padding: 5px 10px;
  }
  .coupon_title {
    font-size: 15px;
    margin-bottom: 10px;
  }
  .coupon_1 {
    position: relative;
    height: 80px;
    display: flex;
    justify-content: space-around;
    align-items: center;
    border: 1px solid #eae6e6;
    border-radius: 6px;
    box-shadow:  0 0 4px #e2dbdb;
    margin-bottom: 10px;
  }
  .coupon_price {
    letter-spacing: -3px;
  }
  .coupon_price .icon {
    color: #f13838;
    font-size: 21px;
  }
  .coupon_price .price{
    color: #f13838;
    font-size: 37px;
  }
  .time_and_condition {
    display: flex;
    height: 50px;
    flex-direction: column;
    justify-content: space-around;
  }
  .time_and_condition span {
    color: #9c9c9c;
    font-size: 13px;
  }
  .coupon_btn div {
    width: 50px;
    height: 30px;
    background-color: #e02e24;
    color: #fff;
    line-height: 30px;
    text-align: center;
    border-radius: 6px;
  }
  .shop_coupon {
    position: absolute;
    top: 0;
    left: 0;
    background-color: #f13838;
    border-radius: 4px;
    color: #fff;
    font-size: 12px;
  }
</style>