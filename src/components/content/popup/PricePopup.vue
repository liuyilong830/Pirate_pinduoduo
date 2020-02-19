<template>
  <div class="price_popup" v-if="Object.keys(payInfo).length !== 0" @click="closePayComp">
    <transition name="mack">
      <div class="content" @click.stop="hhh" v-show="$attrs.val1">
        <div class="content_top">
          <div class="imgdiv">
            <img :src="img" alt="">
          </div>
          <div class="describe">
            <div class="describe_top">
              <div class="price" v-if="!getPrice">￥{{getPriceScoped}}</div>
              <div class="price" v-else>￥{{getPrice}}</div>
              <i class="iconfont icon-ca" @click="closePayComp"></i>
            </div>
            <div class="describe_center">
              <span class="type" v-if="!showGoodInfo">请选择：{{getChangeSize}} {{getChangeType}}</span>
              <span class="type" v-else>已选：{{showGoodInfo}}</span>
            </div>
          </div>
        </div>
        <div class="scroll_type">
          <div class="size" v-if="getSizeTitle">
            <span class="size_title">{{getSizeTitle}}</span>
            <ul class="size_list">
              <li 
                class="size_item" 
                v-for="(item,index) in payInfo.size.sname" 
                :key="index" 
                @click="sizeClick(index)"
                :class="{active: currentSizeIndex===index}">
                {{item}}
              </li>
            </ul>
          </div>
          <div class="type" v-if="getTypeTitle">
            <span class="type_title">{{getTypeTitle}}</span>
            <ul class="type_list">
              <li 
                class="type_item" 
                v-for="(item,index) in payInfo.type.tname" 
                :key="index" 
                @click="typeClick(index)"
                :class="{active: currentTypeIndex===index}">
                {{item}}
              </li>
            </ul>
          </div>
        </div>
        <div class="count">
          <span class="count_title">数量</span>
          <div class="computed_count">
            <div class="iconfont icon-jian2 public" :class="{on: count==1}" @click="decreaseClick"></div>
            <span class="public">{{getCount}}</span>
            <div class="iconfont icon-jia public" :class="{on: count==10}" @click="increaseClick"></div>
          </div>
        </div>
        <div class="content_bottom" @click="payClick">确定</div>
      </div>
    </transition>
  </div>
</template>

<script>
  export default {
    name: 'PricePopup',
    model: {
      prop: 'val1',
      event: 'click'
    },
    props: {
      flag: {
        type: Boolean,
        default: false
      }
    },
    data() {
      return {
        img: '',
        payInfo: {},
        count: 1, // 记录选择的商品的数量
        currentSizeIndex: -1, // 记录选中的尺寸是哪个
        currentTypeIndex: -1, // 记录选中的种类是哪个
        price: 0
      }
    },
    computed: {
      // 获取需要商品的数量
      getCount() {
        return this.count
      },
      // 获取尺寸的标题
      getSizeTitle() {
        return this.payInfo.size.title == '无'? false : this.payInfo.size.title
      },
      // 获取种类的标题
      getTypeTitle() {
        return this.payInfo.type.title == '无'? false : this.payInfo.type.title
      },
      // 当选择尺寸的时候，上方文字的改变
      getChangeSize() {
        if(this.getSizeTitle && this.currentSizeIndex == -1) {
          return this.getSizeTitle
        }
        return ''
      },
      // 当选择种类的时候，上方文字的改变
      getChangeType() {
        if(this.currentTypeIndex == -1) {
          return this.getTypeTitle
        }
        return ''
      },
      // 当尺寸和文字都被选择之后，上方文字显示为已选的商品尺寸和商品种类的信息
      showGoodInfo() {
        var sindex = this.currentSizeIndex
        var tindex = this.currentTypeIndex
        // 先判断是否有尺寸这一栏，如果没有的话，则需要只判断种类的商品是否被选择即可
        if(!this.getSizeTitle && tindex !== -1) {
          return this.payInfo.type.tname[tindex]
        }
        if(sindex !== -1 && tindex !== -1) {
          return this.payInfo.size.sname[sindex] +'、'+ this.payInfo.type.tname[tindex]
        }
        return false
      },
      // 当尺寸和文字都被选择之后，上方价格显示为已选中商品尺寸和商品种类对应的价格
      getPrice() {
        var sindex = this.currentSizeIndex
        var tindex = this.currentTypeIndex
        // 先判断是否有尺寸这一栏，如果没有的话，则需要先将 sindex 设置为0，才能找到对应的价格
        if(!this.getSizeTitle) {
          sindex = 0
        }
        if(sindex !== -1 && tindex !== -1) {
          if(this.flag) { // 判断是选择的单独购买还是选择的拼单购买
            return this.price = this.payInfo.priceList[sindex][tindex].new_price
          }
          return this.price = this.payInfo.priceList[sindex][tindex].exp_price
        }
        return false
      },
      // 在初始价格中展示商品价格的范围
      getPriceScoped() {
        var minPrice = 100000
        var maxPrice = 0
        for(var i = 0; i < this.payInfo.size.sname.length; i++) {
          for(var j = 0; j < this.payInfo.type.tname.length; j++) {
            if(this.flag) {
              if(this.payInfo.priceList[i][j].new_price > maxPrice) {
                maxPrice = this.payInfo.priceList[i][j].new_price
              }
              if(this.payInfo.priceList[i][j].new_price < minPrice) {
                minPrice = this.payInfo.priceList[i][j].new_price
              }
            } else {
              if(this.payInfo.priceList[i][j].exp_price > maxPrice) {
                maxPrice = this.payInfo.priceList[i][j].exp_price
              }
              if(this.payInfo.priceList[i][j].exp_price < minPrice) {
                minPrice = this.payInfo.priceList[i][j].exp_price
              }
            }
          }
        }
        return minPrice + '~' + maxPrice
      }
    },
    methods: {
      closePayComp() {
        this.$emit('click',!this.$attrs.val1)
      },
      // 阻止事件冒泡
      hhh() {},
      decreaseClick() {
        if(this.count <= 1) {
          return
        }
        this.count --
      },
      increaseClick() {
        if(this.count >= 10) {
          return
        }
        this.count ++
      },
      sizeClick(index) {
        if(this.currentSizeIndex == index) {
          this.price = 0
          return this.currentSizeIndex = -1
        }
        this.currentSizeIndex = index
      },
      typeClick(index) {
        if(this.currentTypeIndex == index) {
          this.price = 0
          return this.currentTypeIndex = -1
        }
        this.currentTypeIndex = index
      },
      payClick() {
        var priceInfo = {}
        if(this.getSizeTitle) {
          priceInfo.sTitle = this.getSizeTitle
        }
        if(this.getTypeTitle) {
          priceInfo.tTitle = this.getTypeTitle
        }
        if(this.showGoodInfo) {
          var arr = this.showGoodInfo.split('、')
          if(arr.length == 1) {
            priceInfo.tname = arr[0]
          } else if(arr.length == 2) {
            priceInfo.sname = arr[0]
            priceInfo.tname = arr[1]
          }
        }
        if(this.getPrice) {
          priceInfo.price = this.getPrice
          priceInfo.count = this.count
          this.$router.push('/payment')
          this.$store.commit('setGoodsPrice',priceInfo)
          return 
        }
        console.log(222)
      }
    },
    updated() {
      this.img = this.$attrs.oneImg
      // this.payInfo = this.$attrs.payData
    },
    watch: {
      // 第一次渲染dom的时候this.$attrs.payData中是没有值的，所以我们需要监听该属性的变化，当其有值的时候我们再把该值赋值给指定变量保存
      '$attrs.payData': function(val,oldVal) {
        if(Object.keys(val).length !== 0) {
          this.payInfo = this.$attrs.payData
          // console.log(val,oldVal)
        }
      }
    }
  }
</script>

<style scoped>
  .price_popup {
    width: 100vw;
    height: 100vh;
    position: fixed;
    top: 0;
    background-color: rgba(0, 0, 0, .74);
    z-index: 999;
  }
  .content {
    background-color: #fff;
    width: 100vw;
    height: 480px;
    position: absolute;
    bottom: 0;
  }
  .mack-enter-active, .mack-leave-active {
    transition: all .5s;
    bottom: 0;
  }
  .mack-enter, .mack-leave-to {
    bottom: -480px;
  }
  .content_top {
    box-sizing: border-box;
    height: 85px;
    border-bottom: 1px solid #f5f5f5;
    padding: 10px;
    display: flex;
  }
  .imgdiv {
    flex: 30%;
    position: relative;
  }
  .content_top img {
    width: 95px;
    height: 95px;
    border-radius: 4px;
    position: absolute;
    top: -35px;
    left: 0;
  }
  .describe {
    flex: 70%;
  }
  .describe_top {
    display: flex;
    justify-content: space-between;
  }
  .describe_center {
    text-align: left;
    text-overflow: ellipsis;
    word-break:break-all;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }
  .price {
    color: red;
    font-size: 17px;
    font-weight: 700;
  }
  .type, .size {
    text-align: left;
    margin-bottom: 10px;
    color: #151516;
  }
  .type_list, .size_list {
    display: flex;
    flex-wrap: wrap;
  }
  .type_item, .size_item {
    height: 25px;
    text-align: center;
    line-height: 25px;
    background-color: #ececec8a;
    border-radius: 4px;
    margin-top: 7px;
    margin-right: 7px;
    padding: 0 5px;
    letter-spacing: -1px;
  }
  .active {
    background-color: #e02e24;
    color: #fff;
  }
  .icon-ca {
    color: #9c9c9c;
  }
  .scroll_type {
    box-sizing: border-box;
    border-bottom: 1px solid #f5f5f5;
    padding: 10px 10px 0;
    height: 290px;
    overflow: scroll;
  }
  .count {
    height: 50px;
    padding: 0 10px;
    box-sizing: border-box;
    border-bottom: 1px solid #f5f5f5;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: #545454;
  }
  .computed_count {
    display: flex;
    width: 90px;
    height: 25px;
    line-height: 25px;
    justify-content: space-around;
  }
  .icon-jian2, .icon-jia {
    color: #545454;
    border-radius: 4px;
    background-color: #cccccc;
  }
  .on {
    background-color: #ececec;
  }
  .public {
    flex: 1;
  }
  .content_bottom {
    width: 100vw;
    height: 50px;
    background-color: #e02e24;
    line-height: 50px;
    text-align: center;
    font-size: 18px;
    color: #fff;
    position: absolute;
    bottom: 0;
  }
</style>