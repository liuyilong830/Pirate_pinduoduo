<template>
  <div v-if="Object.keys(describe) !== null">
    <div class="describe">
      <div class="describe_title">商品详情</div>
      <div class="describe_content">{{ describe.describe }}</div>
    </div>
    <!-- 商品详情图 -->
    <div class="describe_imgs">
      <img :src="item.images" alt="" v-for="(item,index) in describe.swiperList" :key="index">
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Describe',
    props: {
      describe: {
        type: Object,
        default() {
          return {}
        }
      }
    },
    updated() {
      var img = document.getElementsByClassName('describe_imgs')[0].getElementsByTagName('img')
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
  .describe {
    padding: 0 10px;
    margin-bottom: 10px;
  }
  .describe_title {
    height: 40px;
    line-height: 40px;
    color: #151516;
    font-size: 15px;
  }
  .describe_content {
    color: #6d6969;
    letter-spacing: 1px;
    text-align: justify;
    word-wrap: break-word;
  }
  .describe_imgs img {
    width: 100vw;
    vertical-align: top;
  }
</style>