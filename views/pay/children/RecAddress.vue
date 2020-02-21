<template>
  <div class="receiving-address">
    <div class="receiving-content">
      <div class="content-top">
        <span>添加收货地址</span>
        <i class="iconfont icon-ca" @click="closeRecAddress"></i>
      </div>
      <ul class="contain-form">
        <li class="contain-item">
          <span class="itme-info">收货人</span>
          <input type="text" class="public" placeholder="收货人姓名" v-model="recName">
        </li>
        <li class="contain-item">
          <span class="itme-info">手机号</span>
          <input type="text" class="public" placeholder="收货人手机号" v-model="recPhone" maxlength="11">
        </li>
        <li class="contain-item">
          <span class="itme-info">地区</span>
          <div class="public mystyle" @click="openAddress">
            <span>{{getAddress}}</span>
            <i class="iconfont icon-youjiantou"></i>
          </div>
        </li>
        <li class="contain-item">
          <span class="itme-info">详细地址</span>
          <input type="text" class="public" placeholder="如街道、小区、乡镇、村" v-model="detailAddress">
        </li>
      </ul>
      <div class="btn" @click="preservation">保存</div>
    </div>

    <my-picker :slots="myAddressSlots" @onMyAddressChange="onMyAddressChange" v-model="isShow" v-show="isShow"></my-picker>
    <toast v-show="isToastShow" :text='text'></toast>
  </div>
</template>

<script>
  import MyPicker from '../../../src/components/content/mypicker/MyPicker'
  import address from '../../../src/assets/address/pca.json'
  import Toast from '../../../src/components/common/toast/Toast'
  export default {
    name: 'RecAddress',
    components: {
      MyPicker,
      Toast
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    data() {
      return {
        myAddressSlots: [
          {
            values: Object.keys(address)
          },
          {
            values: []
          },
          {
            values: []
          }
        ],
        isShow: false,
        address: {
          province: null,
          city: null,
          county: null
        },
        recName: '',
        recPhone: '',
        detailAddress: '',
        isToastShow: false,
        text: ''
      }
    },
    computed: {
      getAddress() {
        return this.address.county? `${this.address.province}-${this.address.city}-${this.address.county}` : '请选择'
      }
    },
    methods: {
      closeRecAddress() {
        this.$emit('click',!this.$attrs.val1)
      },
      openAddress() {
        this.isShow = true
      },
      onMyAddressChange(values) {
        this.myAddressSlots[1].values = Object.keys(address[values[0]])
        this.myAddressSlots[2].values = address[values[0]][values[1]]
        this.address.province = values[0]
        this.address.city = values[1]
        this.address.county = values[2]
      },
      preservation() {
        if(this.recName.length == 0) {
          return this.getToast('请输入收件人姓名')
        } else if(this.recPhone.length == 0) {
          return this.getToast('请输入收件人手机号')
        } else if(!this.address.county) {
          return this.getToast('请选择收货地址')
        } else if(this.detailAddress.length == 0) {
          return this.getToast('请输入详细地址')
        }
        this.$emit('confirm',this.getObj())
        this.closeRecAddress()
      },
      getObj() {
        var obj = {}
        obj.recName = this.recName
        obj.recPhone = this.recPhone
        obj.detailAddress = this.detailAddress
        obj.address = this.getAddress
        return obj
      },
      getToast(message,init = '') {
        this.text = init + message
        this.isToastShow = true
        setTimeout(() => {
          this.isToastShow = false
        },3000)
      }
    }
  }
</script>

<style scoped>
  .receiving-address {
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, .75);
    position: fixed;
    top: 0;
  }
  .receiving-content {
    width: 90vw;
    border-radius: 6px;
    background-color: #fff;
    position: absolute;
    top: 80px;
    left: 50%;
    transform: translateX(-50%);
  }
  .content-top {
    height: 50px;
    border-bottom: 1px solid #f5f5f5;
    text-align: center;
    line-height: 50px;
    position: relative;
  }
  .content-top span {
    font-size: 16px;
  }
  .icon-ca {
    position: absolute;
    color: #d6d6d6;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
  }
  .contain-form {
    box-sizing: border-box;
    padding: 0 10px;
    margin-bottom: 7px;
  }
  .contain-item {
    height: 50px;
    border-bottom: 1px solid #f5f5f5;
    display: flex;
    justify-content: flex-start;
    align-items: center;
  }
  .itme-info {
    flex: 25%;
    font-size: 15px;
  }
  .public {
    flex: 75%;
    border: none;
    box-sizing: border-box;
    height: 100%;
    padding: 5px 0;
    font-size: 15px;
  }
  .btn {
    margin: 0 auto;
    width: 90%;
    height: 45px;
    background-color: #e02e24;
    color: #fff;
    text-align: center;
    line-height: 45px;
    font-size: 16px;
    border-radius: 4px;
    margin-bottom: 10px;
  }
  .mystyle {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .mystyle span {
    font-size: 15px;
  }
  .icon-youjiantou {
    color: #d6d6d6;
  }
</style>