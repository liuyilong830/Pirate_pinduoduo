<template>
  <div>
    <mack-search @click.native="mackSClick" class="mack_search" />
    <div class="search_scroll">
      <left-scroll :bounce='false' class="wrapper_search_left">
        <search-list :list='list' @listItemClick='listItemClick' />
      </left-scroll>
      <right-scroll :probeType='3' :bounce='false' @positionY='positionY' class="wrapper_search_right" ref="search_right_scroll">
        <search-item :listItem='listItem' @contentHeight='contentHeight'></search-item>
      </right-scroll>
    </div>
    <back-top @click.native="backTopClick" v-show="BackTopShow"></back-top>
    <search-bar :show='isShow' @closeSearch='isShow = false'></search-bar>
  </div>
</template>

<script>
  import MackSearch from '../../src/components/content/mack_search/MackSearch'
  import SearchBar from '../../src/components/common/searchBar/SearchBar'
  import LeftScroll from '../../src/components/common/better-scroll/BScroll'
  import RightScroll from '../../src/components/common/better-scroll/BScroll'
  import SearchList from './children/SearchList'
  import SearchItem from './children/SearchItem'
  import BackTop from '../../src/components/common/backTop/BackTop'

  // 网络请求
  import {getSearchList,getSearchItem} from '../../src/network/search'

  export default {
    name: 'Search',
    components: {
      LeftScroll,
      RightScroll,
      SearchBar,
      MackSearch,
      SearchList,
      SearchItem,
      BackTop
    },
    data() {
      return {
        isShow: false,
        sid: 10000,
        list: [],
        listItem: {},
        isBackTopShow: false
      }
    },
    computed: {
      BackTopShow() {
        return this.isBackTopShow
      }
    },
    methods: {
      mackSClick() {
        this.isShow = true
      },
      // 点击左边的列表，右边展示对应的数据
      listItemClick(index,sid) {
        // 这句话是右边展示对应数据的关键
        // 点击对应的列表，就获取对应的数据，替换掉之前的数据
        this.sid = sid
        this.$refs.search_right_scroll.scrollTo(0,0,0)
        getSearchItem(this.sid).then(res => {
          this.listItem = res.message
        })
      },
      contentHeight(timer) {
        this.$refs.search_right_scroll.scroll.refresh()
        clearInterval(timer)
      },
      positionY(position) {
        this.isBackTopShow = -position.y >= 1000 ? true : false
      },
      backTopClick() {
        this.$refs.search_right_scroll.scrollTo(0,0,500)
      }
    },
    mounted() {
      // 获取网络请求数据
      getSearchList().then(res => {
        // console.log(res)
        this.list = res.message.searchList
      })
      // 获取指定sid的内容数据
      getSearchItem(this.sid).then(res => {
        this.listItem = res.message
      })
    }
  }
</script>

<style scoped>
  .search_scroll {
    display: flex;
  }
  .wrapper_search_left {
    width: 90px;
    height: calc(100vh - 49px - 50px);
  }
  .wrapper_search_right {
    width: calc(100vw - 90px);
    height: calc(100vh - 49px - 50px);
  }
  .mack_search {
    border-bottom: 1px solid #f5f5f5;
  }
</style>