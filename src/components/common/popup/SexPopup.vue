<template>
  <div class="sex_popup">
    <div class="content">
      <div class="content_top">
        <span>性别选择</span>
        <div class="close" @click="closePopup">
          <i class="iconfont icon-ca"></i>
        </div>
      </div>
      <div class="sex">
        <button class="boy" @click="afterClick('男')">我是男生</button>
        <button class="girl" @click="afterClick('女')">我是女生</button>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'SexPopup',
    model: {
      prop: 'val1',
      event: 'click'
    },
    methods: {
      closePopup() {
        this.$emit('click',false)
      },
      afterClick(sex) {
        this.$emit('update:sex',sex)
        this.$emit('confirmSex',sex)
        this.closePopup()
      }
    }
  }
</script>

<style scoped>
  .sex_popup {
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, .74);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 999;
  }
  .content {
    width: 75vw;
    background-color: #fff;
    border-radius: 6px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
  }
  .content_top {
    position: relative;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    box-sizing: border-box;
    text-align: center;
    box-shadow: 0 1px 3px #ccc;
  }
  .content_top span {
    font-size: 18px;
  }
  .close {
    position: absolute;
    right: -12px;
    top: -14px;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    text-align: center;
    line-height: 25px;
    background-color: #e8e8e8;
  }
  .iconfont {
    font-size: 13px;
  }
  .sex {
    display: flex;
    justify-content: space-around;
    align-items: center;
    height: 50px;
  }
  button {
    width: 70px;
    height: 30px;
    border-radius: 6px;
    border: none;
    text-align: center;
    line-height: 30px;
    color: #fff;
  }
  .boy {
    background-color: lightblue;
  }
  .girl {
    background-color: lightcoral;
  }
</style>