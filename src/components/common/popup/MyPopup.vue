<template>
  <div class="my_popup">
    <div class="content">
      <div class="content_top">
        <div class="my">
          <span class="item" @click="changeYear" :class="{active: statis==0}">
            <span>{{showYear}}</span>
          </span>
          <!-- <span class="item" v-show="date.year" @click="changeMD(1)" :class="{active: statis==1}">
            <span>{{showMonth}}</span>
          </span>
          <span class="item" v-show="date.month" @click="changeMD(2)" :class="{active: statis==2}">
            <span>{{showDay}}</span>
          </span> -->
        </div>
        <span class="close" @click="closePopup">取消</span>
      </div>
      <ul class="date_year" v-show="statis == 0">
        <li v-for="index in getYear" :key="index" class="public" @click="yearClick(index)">
          <span>{{index}}年</span>
          <span>></span>
        </li>
      </ul>
      <!-- <ul class="date_mouth" v-show="statis == 1">
        <li v-for="index in getMonth" :key="index" class="public" @click="monthClick(index)">
          <span>{{index}}月</span>
          <span>></span>
        </li>
      </ul>
      <ul class="date_day" v-show="statis == 2">
        <li v-for="index in getDay" :key="index" class="public" @click="dayClick(index)">
          <span>{{index}}日</span>
          <span>></span>
        </li>
      </ul> -->
    </div>
  </div>
</template>

<script>
  export default {
    name: 'MyPopup',
    model: {
      prop: 'val1',
      event: 'click'
    },
    methods: {
      closePopup() {
        this.$emit('click',!this.$attrs.val1)
      }
    }
  }
</script>

<style scoped>
  .my_popup {
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
    width: 100vw;
    height: 390px;
    background-color: #fff;
    position: absolute;
    bottom: 0;
  }
  .content_top {
    display: flex;
    height: 40px;
    justify-content: space-between;
    align-items: center;
    padding: 0 10px;
    box-sizing: border-box;
    box-shadow: 0 1px 3px #ccc;
  }
  .content_top span {
    font-size: 16px;
  }
  .close {
    color: #9c9c9c;
  }
  .date_year, .date_mouth, .date_day {
    height: 350px;
    overflow: auto;
  }
  .public {
    border-bottom: 1px solid #f1eded;
    height: 50px;
    display: flex;
    justify-content: space-between;
    box-sizing: border-box;
    padding: 0 10px;
    align-items: center;
  }
  .public span {
    font-size: 12px;
  }
  .active {
    border-bottom: 2px solid red;
  }
</style>