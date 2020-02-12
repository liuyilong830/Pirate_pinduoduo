<template>
  <div v-if="Object.keys(evaluation) !== null">
    <!-- 总评论 -->
    <div class="evaluation">
      <span class="evaluation_item">{{ evaluation.evaluation }}</span>
      <span class="evaluation_all">查看全部></span>
    </div>
    <!-- 前两个评论内容 -->
    <div class="comment">
      <div class="comment_item">
        <img :src="evaluation.first_fan" alt="">
        <span>小明</span>
        <div class="item">{{ evaluation.first_eval }}</div>
      </div>
      <div class="comment_item">
        <img :src="evaluation.second_fan" alt="">
        <span>小红</span>
        <div class="item">{{ evaluation.second_eval }}</div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Evaluation',
    props: {
      evaluation: {
        type: Object,
        default() {
          return {}
        }
      }
    }
  }
</script>

<style scoped>
  .evaluation {
    display: flex;
    justify-content: space-between;
    padding: 0 0 0 10px;
    color: #58595b;
    height: 35px;
    line-height: 35px;
    border-top: 7px solid #e8e2e2c9;
    border-bottom: 1px solid #f1f0f0;
  }
  .evaluation_item {
    font-size: 15px;
    color: #151516;
  }
  .evaluation_all {
    font-size: 15px;
    padding-right: 5px;
  }
  .comment {
    border-bottom: 6px solid #f1f0f0;
  }
  .comment_item {
    border-bottom: 1px solid #f1f0f0;
    padding: 5px 10px;
  }
  .comment_item img {
    border-radius: 50%;
    width: 25px;
    vertical-align: middle;
  }
  .comment_item .item {
    width: 100%;
    height: 40px;
    color: #58595b;
    text-overflow: ellipsis;
    word-break:break-all;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }
</style>