<template>
  <div class="address">
    <div class="content">
      <div class="content_top">
        <div class="birthday">
          <span class="item">
            <span>请选择住址</span>
          </span>
        </div>
        <span class="close" @click="closePopup">确定</span>
      </div>
      <mt-picker :slots="myAddressSlots" @change="onMyAddressChange" class="adress"></mt-picker>
    </div>
  </div>
</template>

<script>
  import { Picker , Popup } from 'mint-ui';
  import myaddress from '../../../assets/address/pca.json'
  export default {
    name: 'addressPopup',
    components: {
      'mt-picker': Picker,
      'mt-popup': Popup
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    data() {
      return {
        popupVisible: false,
        myAddressSlots: [
          {
            flex: 1,
            defaultIndex: 1,        
            values: Object.keys(myaddress),    //省份数组
            className: 'slot1',
            textAlign: 'center'
          }, {
            divider: true,
            content: '-',
            className: 'slot2'
          }, {
            flex: 1,
            values: [],
            className: 'slot3',
            textAlign: 'center'
          },
          {
            divider: true,
            content: '-',
            className: 'slot4'
          },
          {
            flex: 1,
            values: [],
            className: 'slot5',
            textAlign: 'center'
          }
        ],
        myAddressProvince: '',
        myAddressCity: '',
        myAddressCounty: ''
      }
    },
    methods: {
      // 点击确认按钮之后触发的事件
      closePopup() {
        var address = `${this.myAddressProvince}-${this.myAddressCity}-${this.myAddressCounty}`
        this.$emit('confilmAddress' , address)
        this.$emit('click',false)
      },
      // 每改变一次就会触发一次事件
      onMyAddressChange(picker, values) {
        if(myaddress[values[0]]) {
          picker.setSlotValues(1,Object.keys(myaddress[values[0]])); //  Object.keys()会返回一个数组，当前省的数组
          picker.setSlotValues(2,myaddress[values[0]][values[1]]);
          this.myAddressProvince = values[0];
          this.myAddressCity = values[1];
          this.myAddressCounty = values[2];
          this.$emit('update:province', values[0])
          this.$emit('update:city', values[1])
          this.$emit('update:county', values[2])
        }
      },
      openPopup() {
        this.popupVisible = true
      }
    },
    mounted() {
      this.$nextTick(() => {
        this.myAddressSlots[0].defaultIndex = 0
      })
    }
  }
</script>

<style scoped>
  .address {
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
</style>