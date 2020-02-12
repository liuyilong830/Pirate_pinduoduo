<template>
  <tab-bar>
    <tab-bar-item href='/home'>
      <template v-slot:img>
        <i class="iconfont icon-shouye"></i>
      </template>
      <template v-slot:text>
        <span>首页</span>
      </template>
    </tab-bar-item>

    <tab-bar-item href='/recommend'>
      <template v-slot:img>
        <i class="iconfont icon-tuijian1"></i>
      </template>
      <template v-slot:text>
        <span>推荐</span>
      </template>
    </tab-bar-item>

    <tab-bar-item href='/search'>
      <template v-slot:img>
        <i class="iconfont icon-sousuo"></i>
      </template>
      <template v-slot:text>
        <span>搜索</span>
      </template>
    </tab-bar-item>

    <tab-bar-item href='/chat'>
      <template v-slot:img>
        <i class="iconfont icon-liaotian"></i>
      </template>
      <template v-slot:text>
        <span>聊天</span>
      </template>
    </tab-bar-item>

    <tab-bar-item href='/profile'>
      <template v-slot:img>
        <i class="iconfont icon-gerenzhongxin"></i>
      </template>
      <template v-slot:text>
        <span>个人中心</span>
      </template>
    </tab-bar-item>
  </tab-bar>
</template>

<script>
  import TabBar from './TabBar'
  import TabBarItem from './TabBarItem'
  export default {
    name: 'MainTabBar',
    components: {
      TabBar,
      TabBarItem
    }
  }
</script>

<style scoped>
  
</style>