<template>
  <div class="wrapper_x" ref="wrapper_x">
    <div class="content" ref="content">
      <div class="content_item" ref="content_item" v-for="(item,index) in scroller" :key="index">
        <div class="item_img">
          <a href="">
            <img class="base_img" :src="item.image" alt="">
          </a>
          <img class="small_img" v-if="item.small_img" :src="item.small_img" alt="">
        </div>
        <div class="item_title">{{ item.title }}</div>
      </div>
    </div>
    <!-- 底部滚动条 -->
    <div class="scroll" ref="scroll">
      <div class="highlight"></div>
    </div>
  </div>
</template>

<script>
  import BScroll from 'better-scroll'

  export default {
    name: 'Scroller',
    props: {
      scroller: {
        type: Array,
        default() {
          return []
        }
      }
    },
    data() {
      return {
        scroll: null,
        width: 0,
        scrollerW: 0,
        viewW: 0,
        highLightW: 0
      }
    },
    methods: {
      // 获取 content 的实际宽度
      getItemWidth() {
        console.log(this.$refs.content_item[0].getBoundingClientRect())
        var wStr = window.getComputedStyle(this.$refs.content_item[0]).width
        var w = wStr.substring(0,wStr.length - 2)
        for (var i = 0; i < this.scroller.length / 2; i++) {
          this.width += Number(w)
        }
      },
      // 获取滑块高亮部分的宽度
      getScroller() {
        var wStr = window.getComputedStyle(this.$refs.scroll).width
        var w = Number(wStr.substring(0,wStr.length - 2))
        this.scrollerW = w
        this.viewW = document.documentElement.clientWidth
        this.highLightW = this.viewW * this.scrollerW / this.width
        this.$refs.scroll.firstChild.style.width = this.highLightW + 'px'
      },
      // 滑块底部滑动的方法
      scrollX() {
        this.scroll.on('scroll', (position) => {
          var scale =(-position.x) / (this.width - this.viewW) // 算出移动的比例
          // console.log(-position.x)
          // 使用比例 * 剩余未滑动的部分宽度就是真正需要滑动的宽度
          this.$refs.scroll.firstChild.style.left = scale * (this.scrollerW - this.highLightW) + 'px'
        })
      }
    },
    mounted() {
      
    },
    updated() {
      // 因为数据时图片，所以如果在mounted钩子中进行下面的操作的话可能width会是0，因为此时数据显示比这里要慢
      // 动态获取每个 item 的宽度，所有 item 宽度和的一半就是实际 content 的动态横向滚动距离
      this.getItemWidth()
      this.$refs.content.style.width = this.width + 0.01 + 'px'
      this.$nextTick(() => {
        if(!this.scroll) {
          this.scroll = new BScroll(this.$refs.wrapper_x,{
            scrollX: true,  //  允许横向滑动
            click: true,   //  允许发生点击事件
            probeType: 3, // 开启 scroll 事件的记录滑动距离的属性
            bounce: false // 关闭better-scroll 的弹簧效果
          })
          this.scrollX()
        } else {
          this.scroll.refresh()
        }
      })

      this.getScroller()

      
    }
  }
</script>

<style scoped>
  .wrapper_x {
    width: 100vw;
    height: 154px;
    overflow: hidden;
    position: relative;
    border-bottom: 7px solid #ccc5c554;
  }
  .content {
    height: 150px;
    width: 726px;
    display: flex;
    flex-wrap: wrap;
    padding: 0 5px;
    align-content: space-around;
  }
  .content_item {
    width: 73px;
    height: 60px;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    text-align: center;
    color: #847777;
  }
  .item_img {
    position: relative;
  }
  .content_item .base_img {
    width: 60%;
  }
  .content_item .small_img {
    width: 30%;
    position: absolute;
    top: 0;
    right: 0;
  }
  .item_title {
    font-size: 12px;
  }
  .scroll {
    width: 100px;
    height: 2px;
    background-color: #ccc;
    border-radius: 6px;
    position: absolute;
    left: 50%;
    transform: translateX(-50%)
  }
  .highlight {
    width: 50%;
    height: 2px;
    background-color: orange;
    border-radius: 6px;
    position: absolute;
  }
</style>