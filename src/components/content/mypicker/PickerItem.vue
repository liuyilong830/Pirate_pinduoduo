<template>
  <div>
    <ul class="picker-list">
      <li class="picker-item" v-for="(item,index) in pickerItem.values" :key="index" @click="pickerItemClick(index,item)">
        <span>{{item}}</span>
        <i class="iconfont icon-youjiantou"></i>
      </li>
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'PickerItem',
    props: {
      pickerItem: {
        type: Object,
        default() {
          return {}
        }
      },
      status: {
        type: Number
      },
      values: {
        type: Array
      }
    },
    methods: {
      pickerItemClick(index,item) {
        this.values.splice(this.status,1,item)
        for(var i = this.status+1; i < 3; i++) {
          this.values.splice(i)
        }
        // console.log(index,item)
        this.$emit('changeStatus')
        this.$emit('onMyAddressChange',this.values)
      }
    },
    created() {
      // console.log(this.pickerItem)
    }
  }
</script>

<style scoped>
  ul {
    list-style: none;
    margin: 0;
    padding: 0;
  }
  .picker-list {
    height: 350px;
    overflow: scroll;
  }
  .picker-item {
    height: 50px;
    box-sizing: border-box;
    padding: 0 10px;
    border-bottom: 1px solid #f5f5f5;
    line-height: 50px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .icon-youjiantou {
    color: #d6d6d6;
  }
  /* 
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
  } */
</style>