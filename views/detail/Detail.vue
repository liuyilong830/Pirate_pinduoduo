<template>
  <div>
    <b-scroll :probeType='3' :pullUpLoad='true' @positionY='positionY' class="wrapper_detail" ref="wrapper_detail">
      <div class="detail_top">
        <div class="swiper">
          <van-swipe class="my-swipe" @change="onChange">
            <van-swipe-item v-for="(item,index) in swiperList" :key="index">
              <img :src="item.images" alt="">
            </van-swipe-item>
            <!-- 自定义指示器 -->
            <div class="custom-indicator" slot="indicator" ref="indicator" :style="isBottomH">
              {{ current + 1 }} / {{ swiperList.length }}
            </div>
          </van-swipe>
        </div>
        <div class="icon_img" v-if="information.icon_img" ref="icon_img">
          <img  :src="information.icon_img" alt="">
        </div>
      </div>
      <!-- 价格，标题，福利版块 -->
      <item-center :iteminfo='iteminfo'></item-center>
      <!-- 优惠卷版块 -->
      <coupon :coupon='coupon' @click.native='couponClick'></coupon>
      <!-- 福利版块 -->
      <welfares :welfares='welfares' @click.native='welfaresClick'></welfares>
      <!-- 评论版块 -->
      <!-- 热销榜版块 -->
      <base-seller :bseller='bseller'></base-seller>
      <evaluation :evaluation='evaluation'></evaluation>
      <!-- 店铺信息 -->
      <shop :shopinfo='shopinfo'></shop>
      <!-- 商品详情 -->
      <describe :describe='describe' @contentHeight='contentHeight'></describe>
    </b-scroll>
    <!-- 回到顶部按钮 -->
    <back-top v-show="isShow" @click.native="backTopClick"></back-top>
    <!-- BottomBar 组件版块 -->
    <bottom-bar :prices='prices' :payData='payData'></bottom-bar>
    <!-- welfare组件弹出层 -->
    <pop-up :change='change' @closePopUp='closePopUp' :flag='flag' :content='flagContent'></pop-up>
  </div>
</template>

<script>
  import BScroll from '../../src/components/common/better-scroll/BScroll'
  import itemCenter from '../detail/children/ItemCenter'
  import Coupon from '../detail/children/Coupon'
  import Welfares from '../detail/children/Welfares'
  import BaseSeller from '../detail/children/BaseSeller'
  import Evaluation from '../detail/children/Evaluation'
  import Shop from '../detail/children/Shop'
  import Describe from '../detail/children/Describe'
  import BackTop from '../../src/components/common/backTop/BackTop'
  import BottomBar from '../../src/components/content/bottomBar/BottomBar'
  import PopUp from '../../src/components/common/popup/PopUp'
  import {getItemDetail,itemInformation,itemEvaluation,ShopInfo,DescribeInfo,BSeller,getPayData} from '../../src/network/detail'
  export default {
    name: 'Detail',
    components: {
      BScroll,
      itemCenter,
      Coupon,
      Welfares,
      BaseSeller,
      Evaluation,
      BackTop,
      BottomBar,
      Shop,
      Describe,
      PopUp
    },
    data() {
      return {
        id: 0,
        current: 0,
        swiperList: [], // 保存详情页的轮播图数组
        information: {}, // 保存详情页的其他数据
        iteminfo: {}, // 保存 ItemCenter 组件需要的数据
        evaluation: {},
        shopinfo: {},
        describe: {},
        isShow: false, // 记录回到顶部按钮是否展示出来
        prices: { expensive_price: 0, new_price: 0 }, // 保存单独购买和发起拼单的价格传入 BottomBar 组件
        coupon: '',
        welfares: '',
        bseller: {},
        change: false,
        flag: false, // 记录是优惠卷的点击还是福利的点击
        welfPopInfo: [],
        couPopInfo: [],
        payData: {} // 保存商品种类，尺寸，以及对应金额的数据
      }
    },
    computed: {
      isBottomH() {
        return this.information.icon_img? {bottom: '54px'} : {bottom: '6px'}
      },
      // 当点击的是优惠卷时，传递优惠卷相关的数据到 Popup组件中；当点击的是福利时，传递福利相关数据到组件
      flagContent() {
        return this.flag ? this.couPopInfo : this.welfPopInfo
      }
    },
    methods: {
      // 轮播图插件的事件
      onChange(index) {
        this.current = index
      },
      // 记录y轴滑动距离的方法
      positionY(position) {
        this.isShow = -position.y > 1000? true : false
      },
      // 回到顶部的方法
      backTopClick() {
        this.$refs.wrapper_detail.scrollTo(0,0,500)
      },
      // 优惠卷时改变弹出层内容的方法
      couponClick() {
        this.change = true
        this.flag = true
      },
      // 福利时改变弹出层内容的方法
      welfaresClick() {
        this.change = true
        this.flag = false
      },
      // 关闭弹出层的方法
      closePopUp() {
        this.change = false
      },
      contentHeight(timer) {
        this.$refs.wrapper_detail.scroll.refresh()
        clearInterval(timer)
      }
    },
    mounted() {
      // 保存商品的唯一标识id
      this.id = this.$route.params.id
      // 根据id请求特定的详情页数据
      getItemDetail(this.id).then(res => {
        var data = res.message
        // console.log(res.message)
        // 获取详情页的轮播图数据
        this.swiperList = data.swiperList
        // 获取详情页的其他数据
        this.information = data.itemDetail
        // 获取优惠卷、福利、热销榜的相关数据
        this.coupon = data.itemDetail.coupon
        this.welfares = data.itemDetail.welfares
        this.bseller = new BSeller(data.itemDetail)
        // 获取弹出层需要展示的信息
        this.welfPopInfo = data.welfaresP
        this.couPopInfo = data.couponP
        // 获取价格、标题等信息数据
        this.iteminfo = new itemInformation(data.itemDetail)
        // 获取评论相关数据
        this.evaluation = new itemEvaluation(data.itemDetail)
        // 获取商家相关数据
        this.shopinfo = new ShopInfo(data.itemDetail)
        // 获取详情页描述以及图片的数据
        this.describe = new DescribeInfo(data.itemDetail,data.swiperList)
        // 将拼单价格和单独购买的价格保存在一个对象中
        this.prices.expensive_price = data.itemDetail.expensive_price
        this.prices.new_price = data.itemDetail.price
      })
      // 获取支付金额等数据
      getPayData(this.id).then(res => {
        // console.log(res)
        this.payData = res.message
      })
    },
    updated() {
      // this.$refs.wrapper_detail.scroll.refresh()
    }
  }
</script>

<style scoped>
  .wrapper_detail {
    height: calc(100vh - 50px);
  }
  .van-swipe-item img {
    width: 100vw;
    vertical-align: middle;
  }
  .my-swipe {
    position: relative;
  }
  .detail_top {
    position: relative;
  }
  .custom-indicator {
    position: absolute;
    bottom: 6px;
    right: 6px;
    background-color: rgba(197, 194, 194, .33);
    border-radius: 3px;
    color: #eae4e4;
    font-size: 13px;
  }
  .icon_img {
    position: absolute;
    bottom: 0;

  }
  .icon_img img {
    width: 100vw;
    vertical-align: bottom;
  }
</style>