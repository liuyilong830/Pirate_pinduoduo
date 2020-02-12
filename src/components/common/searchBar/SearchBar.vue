<template>
  <div class="search_bar" v-show="show">
    <div class="search">
      <div class="back" @click="backClick">
        <slot name="back_btn">
          <i class="iconfont icon-fanhui"></i>
        </slot>
      </div>
      <div class="form">
        <slot name="back_text">
          <form action="" class="aaa">
            <i class="iconfont icon-search"></i>
            <input type="text" class="back_text" placeholder="iphone6数据线" maxlength="20">
          </form>
        </slot>
      </div>
      <div class="sousuo">
        <slot name="back_search">搜索</slot>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'SearchBar',
    props: {
      show: {
        type: Boolean,
        default: false
      }
    },
    methods: {
      backClick() {
        this.$emit('closeSearch')
      }
    }
  }
</script>

<style scoped>
  .search_bar {
    width: 100vw;
    height: 100vh;
    background-color: #fff;
    position: fixed;
    top: 0;
    z-index: 999;
  }
  .search {
    width: 100vw;
    height: 50px;
    box-sizing: border-box;
    padding: 5px;
    display: flex;
    text-align: center;
    align-items: center;
  }
  .aaa .iconfont {
    position: absolute;
    top: 50%;
    left: 7px;
    transform: translateY(-50%);
    color: #989393;
  }
  .back {
    flex: 10%;
  }
  .back i {
    font-size: 23px;
    color: #9c9c9c;
  }
  .aaa {
    position: relative;
  }
  .form {
    flex: 75%;
  }
  .form input {
    width: 100%;
    height: 40px;
    border: none;
    background-color: #ededed;
    border-radius: 6px;
    padding-left: 30px;
    box-sizing: border-box;
    font-size: 15px;
    
  }
  .sousuo {
    flex: 15%;
    font-size: 16px;
    color: #9c9c9c;
  }
</style>