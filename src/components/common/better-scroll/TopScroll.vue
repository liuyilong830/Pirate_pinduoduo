<template>
  <div class="wrapper-top" ref="wrapperTop">
    <ul class="wrapper-top-content" ref="content">
      <li 
        class="content_item" 
        v-for="(item,index) in list" 
        :key="index" 
        ref="content_item"
        @click="itemClick(index,item.path)"
        :class="{active: currentIndex===index}">
        <span>{{ item.title }}</span>
      </li>
    </ul>
  </div>
</template>

<script>
  import BScroll from 'better-scroll'

  export default {
    name: 'TopScroll',
    data() {
      return {
        scroll: null,
        list: [
          {title: '热门', path: '/home/hot'},
          {title: '男装', path: '/home/man'},
          {title: '手机', path: '/home/phone'},
          {title: '鞋包', path: '/home/shoebag'},
          {title: '食品', path: '/home/food'},
          {title: '电器', path: '/home/electric'},
          {title: '汽车', path: '/home/car'},
          {title: '女装', path: '/home/women'},
          {title: '百货', path: '/home/department'},
          {title: '家具', path: '/home/furniture'},
          {title: '内衣', path: '/home/underwear'},
          {title: '家装', path: '/home/homedecoration'},
          {title: '电脑', path: '/home/computer'}
        ],
        width: 0,
        currentIndex: 0,

      }
    },
    methods: {
      getItemWidth() {
        for (var i = 0; i < this.list.length; i++) {
          this.width += this.$refs.content_item[0].clientWidth
        }
      },
      itemClick(index,path) {
        // 始终保持点到哪个 item ，哪个 item 的index与currentIndex 同步
        this.currentIndex = index
        // 跳转到对应的二级路由
        this.$router.replace(path)
      }
    },
    computed: {
      
    },
    mounted() {
      // console.log(this.$refs.content_item[0].clientWidth)
      this.getItemWidth()
      this.$refs.content.style.width = this.width + 'px'
      this.$nextTick(() => {
        this.scroll = new BScroll(this.$refs.wrapperTop,{
          scrollX: true,  //  允许横向滑动
          click: true   //  允许发生点击事件
        })
      })
    }
  }
</script>

<style scoped>
  .wrapper-top {
    width: 100vw;
    overflow: hidden;
    box-shadow: 0 3px 5px #615d5d17;
  }
  .wrapper-top-content {
    height: 40px;
    width: 1000px;
    display: flex;
  }
  .content_item {
    width: 40px;
    padding: 0 5px;
    height: 40px;
    line-height: 40px;
    text-align: center;
  }
  .content_item span {
    padding-bottom: 2px;
  }
  .active {
    color: #ff6c25;
  }
  .active span {
    border-bottom: 2px solid #ff6c25;
  }
</style>