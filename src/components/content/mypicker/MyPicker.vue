<template>
  <div class="my-picker">
    <transition name="mock">
      <div class="picker-content" v-show="$attrs.val1">
        <div class="content-top">
          <div class="title">
            <span class="item" v-for="(item,index) in values" :key="index" :class="{active: status === index}" @click="listChange(index)">
              <span>{{item}}</span>
            </span>
          </div>
          <span class="close" @click="closePicker">取消</span>
        </div>
        <!-- 下面是列表项 -->
        <picker-item 
          v-for="(item,index) in slots" :key="index" 
          :pickerItem='item' 
          :status='status'
          v-on="$listeners"
          v-show="status === index"
          @changeStatus='changeStatus'
          :values='values'>
        </picker-item>
      </div>
    </transition>
  </div>
</template>

<script>
  import PickerItem from './PickerItem'
  export default {
    name: 'MyPicker',
    components: {
      PickerItem
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    props: {
      slots: {
        type: Array,
        default() {
          return []
        }
      }
    },
    data() {
      return {
        status: 0,
        values: []
      }
    },
    methods: {
      changeStatus() {
        if(this.status < this.slots.length-1) {
          return this.status ++
        }
        // 进入这一步说明选择完县了
        this.closePicker()
      },
      closePicker() {
        this.$emit('click',!this.$attrs.val1)
      },
      listChange(index) {
        this.status = index
      }
    }
  }
</script>

<style scoped>
  .my-picker {
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, .74);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 999;
  }
  .picker-content {
    width: 100vw;
    height: 390px;
    background-color: #fff;
    position: absolute;
    bottom: 0;
  }
  .mock-enter, .mock-leave-to {
    bottom: -390px;
  }
  .mock-enter-active, .mock-leave-active {
    transition: .5s;
    bottom: 0px;
  }
  .content-top {
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
  .title {
    display: flex;
  }
  .title .item {
    margin-right: 7px;
    border-bottom: 2px solid #fff;
  }
  .title .active {
    border-bottom: 2px solid red;
  }
</style>