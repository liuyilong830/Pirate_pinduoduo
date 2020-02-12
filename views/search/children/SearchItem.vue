<template>
  <div class="search_list_item" v-if="Object.keys(listItem) !== null">
    <!-- 顶部活动图片 -->
    <div class="top_image" v-if="listItem.image">
      <img :src="listItem.image" alt="">
      <div class="dot"></div>
    </div>
    <!-- 品牌图片 -->
    <div class="bound_imgs" v-if="isShowBoundImgs">
      <div class="b_img_item" v-for="(item,index) in listItem.BoundImgs" :key="index">
        <img :src="item.image" alt="">
      </div>
      <div class="dot"></div>
    </div>
    <!-- 内容列表 -->
    <div class="content">
      <div class="content_name" v-for="(content,index) in listItem.searchItem" :key="index">
        <div class="title">
          <span>{{ content.name }}</span>
          <img :src="content.icon" alt="">
        </div>
        <div class="flex">
          <div class="content_item" v-for="(item,index) in content.item" :key="index">
            <img class="item_img" :src="item.img" alt="">
            <span>{{ item.item_name }}</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'SearchItem',
    props: {
      listItem: {
        type: Object,
        default() {
          return {}
        }
      }
    },
    computed: {
      isShowBoundImgs() {
        return this.listItem.BoundImgs && this.listItem.BoundImgs.length !== 0
      }
    },
    updated() {
      var img = document.getElementsByClassName('item_img')
      let count = 0
      let length = img.length
      if(length) {
        var timer = setInterval(() => {
          if(count == length) {
            this.$emit('contentHeight', timer)
          }else if(img[count].complete){
            count ++
          }
        })
      }
    }
  }
</script>

<style scoped>
  .search_list_item {
    width: 100%;
  }
  .top_image {
    text-align: center;
  }
  .top_image img {
    width: 95%;
    vertical-align: top;
  }
  .dot {
    width: 85%;
    height: 1px;
    border-bottom: 1px solid #f5efef;
    margin: 0 auto;
  }
  .bound_imgs {
    display: flex;
    flex-wrap: wrap;
    margin: 0 7px;
    text-align: center;
  }
  .b_img_item {
    width: 33.3%;
    padding: 10px 0;
  }
  .b_img_item img {
    width: 80%;
  }
  .title {
    margin: 5px 0;
  }
  .title span {
    font-size: 15px;
  }
  .title img {
    width: 19%;
    vertical-align: middle;
  }
  .content {
    margin: 0 7px;
  }
  .flex {
    display: flex;
    flex-wrap: wrap;
  }
  .content_item {
    width: 33.3%;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    padding: 5px 0;
    align-items: center;
  }
  .content_item img {
    width: 60%;
  }
  .content_item span {
    font-size: 13px;
    color: #58595b;
  }
</style>