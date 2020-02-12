<template>
  <div class="hot">
    <b-scroll :pullUpLoad='true' :probeType='3' ref="scroll" @pullingUp='pullingUp' @positionY='positionY' class="wrapper">
      <!-- 轮播图组件 vant ui框架 -->
      <div class="swiper">
        <van-swipe class="my-swipe" :autoplay="2000">
          <van-swipe-item v-for="(item,index) in swiperList" :key="index">
            <img :src="item.img" alt="">
          </van-swipe-item>
        </van-swipe>
      </div>
      <!-- 中间滑块 scroller -->
      <scroller :scroller='scrollerList'></scroller>
      <!-- 补贴栏 -->
      <subsidy :subsidy='subsidy'></subsidy>
      <!-- gif图片版块 -->
      <img class="gif_img" :src="gifImage" alt="">
      <!-- goodslsit版块 -->
      <goods-list :goodsList='goodsList'></goods-list>
    </b-scroll>
    <!-- 回到顶部按钮 -->
    <back-top v-show="backTopActive" @click.native="backTop"></back-top>
    <router-view></router-view>
  </div>
</template>

<script>
  import Scroller from './hot_chirdren/Scroller'
  import Subsidy from './hot_chirdren/Subsidy'
  import BScroll from '../../../src/components/common/better-scroll/BScroll'
  import GoodsList from '../../../src/components/content/goods/GoodsList'
  import BackTop from '../../../src/components/common/backTop/BackTop'

  import {getHotStatic,getGoodsList} from '../../../src/network/home'
  export default {
    name: 'Hot',
    components: {
      Scroller,
      Subsidy,
      BScroll,
      GoodsList,
      BackTop
    },
    data() {
      return {
        swiperList: [], // 保存轮播图数据
        scrollerList: [],  // 保存中间滑块数据
        subsidy: {},  // 保存补贴栏的数据
        gifImage: '',
        goodsList: [], // 保存商品列表数据
        page: 0, // 保存商品列表页码
        backTopActive: false, // 保存回到顶部按钮的显示和隐藏
        leavePositionY: 0 // 保存home组件离开是scroll离开时的位置
      }
    },
    methods: {
      // 每上拉加载的时候，就将下一页的数据请求过来
      getGoodsList() {
        var page = this.page + 1
        getGoodsList(page).then(res => {
          this.goodsList.push(...res.message.goodsList)
          this.page = page
          this.$refs.scroll.finishPullUp()
        }).catch(err => {
          console.log(err)
        })
      },
      // 上拉加载更多的操作
      pullingUp() {
        this.getGoodsList()
      },
      // 滑动的时候获取 y的坐标，达到在某个 y值的时候让 BackTop组件显示出来
      positionY(position) {
        if(-position.y > 1000) {
          this.backTopActive = true
        } else {
          this.backTopActive = false
        }
      },
      // 回到顶部的方法
      backTop() {
        this.$refs.scroll.scrollTo(0,0,200)
      }
    },
    mounted() {
      getHotStatic().then(res => {
        // console.log(res)
        // 获取轮播图数据
        this.swiperList = res.message.swiperList
        // 获取中间滑块数据
        this.scrollerList = res.message.scrollerList
        // 获取补贴栏的数据
        this.subsidy = res.message.subsidy
        // 获取热门版块的gif图片
        this.gifImage = res.message.image.gif_img
      })
      // 获取商品列表数据
      this.getGoodsList()
    },
    updated() {
      this.$refs.scroll.scroll.refresh()
    }
  }
</script>

<style>
  .van-swipe-item img {
    width: 100vw;
    vertical-align: middle;
  }
  .gif_img {
    width: 100vw;
    border-bottom: 7px solid #ccc5c554;
  }
  .wrapper {
    height: calc(100vh - 40px - 49px);
  }
</style>