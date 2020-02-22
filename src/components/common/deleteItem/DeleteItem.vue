<template>
  <div class="delate-item">
    <div class="item-content">
      <div class="content-top">
        {{text}}
      </div>
      <div class="btn">
        <span class="no" @click="noClick">取消</span>
        <span class="yes" @click="yesClick">确定</span>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'DeleteItem',
    props: {
      text: String
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    methods: {
      noClick() {
        this.$emit('click',!this.$attrs.val1)
      },
      yesClick() {
        this.$emit('confirmDelete')
        this.noClick()
      }
    }
  }
</script>

<style scoped>
  .delate-item {
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, .75);
    position: fixed;
    top: 0;
  }
  .item-content {
    width: 80%;
    background-color: #fff;
    border-radius: 6px;
    position: absolute;
    top: 100px;
    left: 50%;
    transform: translateX(-50%);
  }
  .content-top {
    height: 55px;
    border-bottom: 1px solid #f5f5f5;
    line-height: 55px;
    text-align: center;
    font-size: 16px;
  }
  .btn {
    height: 40px;
    display: flex;
    align-items: center;
    text-align: center;
  }
  .no {
    font-size: 16px;
    color: #ccc;
    flex: 1;
    border-right: 1px solid #f5f5f5;
  }
  .yes {
    font-size: 16px;
    color: red;
    flex: 1;
  }
</style>