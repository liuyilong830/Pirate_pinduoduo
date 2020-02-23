<template>
  <div class="payment">
    <div class="receiving_address">
      <div class="address_top"  v-if="showRecAddress" @click="getAddress">
        <div class="address_title">
          <div class="iconfont icon-jia"></div>
          <span>手动添加收货地址</span>
        </div>
        <i class="iconfont icon-youjiantou"></i>
      </div>
      <!-- 如果有收货地址，则显示收货地址 -->
      <div class="rec_address_top" v-else @click="getMyAddress">
        <i class="iconfont icon-shouhuodizhi"></i>
        <div class="rec_address_info">
          <div class="name_and_phone">
            <span class="name">{{recAddressInfo[0].rec_name}}</span>
            <span>{{recAddressInfo[0].rec_phone}}</span>
          </div>
          <div class="recaddress">
            <span>{{recAddressInfo[0].rec_address}}</span>
            <span>{{recAddressInfo[0].rec_detail_add}}</span>
          </div>
        </div>
        <div class="iconfont icon-youjiantou"></div>
      </div>
      <div class="dot"></div>
    </div>
    <div class="shop_info">
      <div class="logo">
        <img :src="shopInfo.shop_logo" alt="">
      </div>
      <div class="shop_name">{{shopInfo.shop_name}}</div>
      <div class="shop_img" v-if="shopInfo.shop_img">
        <img :src="shopInfo.shop_img" alt="">
      </div>
    </div>
    <div class="goods_info">
      <div class="goods_img">
        <img :src="priceInfo.goodImg" alt="">
      </div>
      <div class="goods_text">
        <div class="title">{{shopInfo.title}}</div>
        <div class="size_and_type">
          <p class="size" v-if="showSize">
            <span>{{priceInfo.sTitle}}:</span>
            <span>{{priceInfo.sname}}</span>
          </p>
          <p class="type">
            <span>{{priceInfo.tTitle}}:</span>
            <span>{{priceInfo.tname}}</span>
          </p>
        </div>
        <div class="price_and_welfare">
          <span>￥</span><span>{{priceInfo.price}}/件</span>
          <span class="welfare" v-if="shopInfo.welfare">{{shopInfo.welfare}}</span>
        </div>
      </div>
    </div>
    <count class="count" :count='priceInfo.count' :minCount='1' @decreaseClick='decreaseClick' @increaseClick='increaseClick'>
      <template v-slot:count_title>
        购买数量
      </template>
      <template v-slot:count>
        {{priceInfo.count}}
      </template>
    </count>
    <pay-mode></pay-mode>
    <pay></pay>

    <rec-address v-model="open" v-show="open" @confirm='recConfirm'></rec-address>
    <manage-address v-model="openRecAddress" v-show="openRecAddress" :recAddressList='getRecAddressInfo'></manage-address>
  </div>
</template>

<script>
  import Count from '../../src/components/common/count/Count'
  import PayMode from '../../src/components/common/pay/PayMode'
  import RecAddress from './children/RecAddress'
  import Pay from './children/Pay'
  import {mapGetters} from 'vuex'
  import {setRecAddress,getRecAddress} from '../../src/network/pay'
  import ManageAddress from './children/ManageAddress'
  export default {
    name: 'PayMent',
    components: {
      Count,
      PayMode,
      Pay,
      RecAddress,
      ManageAddress
    },
    data() {
      return {
        priceInfo: null,
        shopInfo: null,
        change: 0,
        openRecAddress: false,
        open: false,
        recAddressInfo: [],
        isShow: true
      }
    },
    computed: {
      showSize() {
        return this.priceInfo.sTitle? true : false
      },
      ...mapGetters(['getUserId']),
      showRecAddress() {
        return this.recAddressInfo.length == 0? true : false
      },
      getRecAddressInfo() {
        return this.recAddressInfo
      }
    },
    methods: {
      decreaseClick() {
        if(this.priceInfo.count <= 1) {
          return
        }
        this.priceInfo.count --
        this.$store.commit('changeCount',{count: this.priceInfo.count})
      },
      increaseClick() {
        if(this.priceInfo.count >= 10) {
          return
        }
        this.priceInfo.count ++
        this.$store.commit('changeCount',{count: this.priceInfo.count})
      },
      changeWechat() {
        this.change = 0
      },
      changeAlipay() {
        this.change = 1
      },
      getAddress() {
        this.open = true
      },
      recConfirm(payload) {
        setRecAddress(this.getUserId,payload).then(res => {
          console.log(res)
          payload.uid = this.getUserId
          this.recAddressInfo.push(payload)
          this.$store.commit('setRecAddress',this.recAddressInfo)
        })
      },
      getMyAddress() {
        this.openRecAddress = true
      }
    },
    created() {
      this.priceInfo = JSON.parse(window.localStorage.getItem('priceInfo'))
      this.shopInfo = JSON.parse(window.localStorage.getItem('shopInfo'))
      // this.recAddressInfo = JSON.parse(window.localStorage.getItem('recAddress')) || []
      // 这里这么做的原因是因为如果服务器重启之后，我们的数据就丢失了，所以我们需要将数据通过接口从数据库中获取
      if(!JSON.parse(window.localStorage.getItem('recAddress'))) {
        getRecAddress(this.getUserId).then(res => {
          console.log(res)
          this.recAddressInfo = res.message
          // 如果本地存储中没有recAddress的数据，就说明初始的时候vuex管理中没有该数据，所以需要将数据库中的数据保存在vuex中，方便之后添加地址直接push
          console.log(res.message)
          this.$store.commit('initRecAddress',res.message)
        })
      } else {
        this.recAddressInfo = JSON.parse(window.localStorage.getItem('recAddress'))
      }
    }
  }
</script>

<style scoped>
  .payment {
    width: 100vw;
    height: 100vh;
    background-color: #f5f5f5;
  }
  .receiving_address {
    background-color: #fff;
    margin-bottom: 10px;
  }
  .address_top {
    height: 48px;
    box-sizing: border-box;
    padding: 0 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .address_title {
    display: flex;
    align-items: center;
  }
  .address_title .iconfont {
    font-size: 16px;
    background-color: red;
    color: #f5f5f5;
    border-radius: 3px;
    margin-right: 10px;
  }
  .address_title span {
    font-size: 15px;
  }
  .icon-youjiantou {
    color: #ababab;
  }
  .dot {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABGUAAAAGCAMAAABdG9OLAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAPUExURf///xWn1tojP+2Rn4rT6zXCHwQAAABPSURBVFjD7dDBCQAhAAPBeNp/zZZwIgR8TAoIw2b8bOVo87vZPDtf42bk5ORPyCM+OTl5VR7xycnJq/KIT05OXpVHfHJy8qo84pOTk1flG/eHGIuy2bRIAAAAAElFTkSuQmCC');
    width: 100vw;
    height: 2px;
    background-size: 500px;
  }
  .shop_info {
    box-sizing: border-box;
    padding: 0 10px;
    height: 40px;
    background-color: #fff;
    display: flex;
    justify-content: flex-start;
    align-items: center;
  }
  .shop_info .logo {
    width: 25px;
    height: 25px;
    margin-right: 7px;
  }
  .logo img {
    width: 100%;
  }
  .shop_name {
    margin-right: 7px;
  }
  .shop_img {
    height: 20px;
  }
  .shop_img img {
    height: 100%;
    vertical-align: middle;
  }
  .goods_info {
    width: 100vw;
    height: 105px;
    box-sizing: border-box;
    padding: 5px 10px;
    display: flex;
  }
  .goods_img {
    flex: 30%;
    overflow: hidden;
  }
  .goods_img img {
    width: 90%;
  }
  .goods_text {
    flex: 70%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  .title {
    font-size: 13px;
    word-break: break-all;
  }
  .size_and_type {
    color: #ababab;
  }
  .size, .type {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .size_and_type span {
    font-size: 12px;
  }
  .welfare {
    border: 1px solid #52c523;
    border-radius: 3px;
    color: #52c523;
  }
  .count {
    margin-bottom: 10px;
  }
  .rec_address_top {
    height: 70px;
    background-color: #fff;
    box-sizing: border-box;
    padding: 0 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .rec_address_info {
    flex: 85%;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
  }
  .icon-shouhuodizhi {
    font-size: 20px;
    flex: 10%;
  }
  .rec_address_top .icon-youjiantou {
    flex: 5%;
  }
  .name_and_phone .name {
    font-size: 16px;
    font-weight: 700;
  }
</style>