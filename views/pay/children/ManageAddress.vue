<template>
  <div class="manage-address">
    <ul class="address-list">
      <li class="item" v-for="(item,index) in recAddressList" :key="index">
        <i class="iconfont icon-ca"></i>
        <div class="padding">
          <div class="item-info">
            <div class="name_and_phone">
              <span>{{item.recName}}</span>
              <span>{{item.recPhone}}</span>
            </div>
            <div class="adress_and_detailadd">
              <span>{{item.address}}</span>
              <span>{{item.detailAddress}}</span>
              <span v-if="index === 0" class="iconfont icon-gouSolid"></span>
            </div>
          </div>
          <div class="item-bottom">
            <span :class="{active: index == currentIndex}">
              <span 
                class="iconfont" 
                :class="{'icon-yuanquan':index !== currentIndex, 'icon-gou':index == currentIndex}" 
                @click="activeClick(index)"></span>
              {{index == currentIndex? '已设置为默认' : '设置为默认'}}
            </span>
            <div class="change">
              <span>编辑</span>
              <span class="zhiding">置顶</span>
            </div>
          </div>
        </div>
      </li>
    </ul>
    <div class="btn" @click="addNewAddress">
      <i class="iconfont icon-jia"></i>
      <span>手动添加</span>
    </div>
    <div class="btn" @click="closeManageAddress">返回按钮</div>

    <rec-address v-model="openRecAddress" v-show="openRecAddress" @confirm='recConfirm'></rec-address>
  </div>
</template>

<script>
  import RecAddress from './RecAddress'
  import {setRecAddress} from '../../../src/network/pay'
  import {mapGetters} from 'vuex'
  export default {
    name: 'ManageAddress',
    components: {
      RecAddress
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    data() {
      return {
        openRecAddress: false,
        recAddressList: null,
        currentIndex: 0
      }
    },
    computed: {
      ...mapGetters(['getUserId','getRecAddress'])
    },
    methods: {
      closeManageAddress() {
        this.$emit('click',!this.$attrs.val1)
      },
      addNewAddress() {
        this.openRecAddress = true
      },
      recConfirm(payload) {
        setRecAddress(this.getUserId,payload).then(res => {
          console.log(res)
          payload.uid = this.getUserId
          this.$store.commit('setRecAddress',payload)
          // this.recAddressInfo.push(payload)
          // this.$emit('changeAddress')
        })
      },
      activeClick(index) {
        this.currentIndex = index
      }
    },
    created() {
      this.recAddressList = this.getRecAddress
    }
  }
</script>

<style scoped>
  .manage-address {
    width: 100vw;
    height: 100vh;
    background-color: #f5f5f5;
    position: fixed;
    top: 0;
  }
  .content {
    background-color: #fff;
  }
  .padding {
    box-sizing: border-box;
    padding: 15px 15px 0;
  }
  .item {
    background-color: #fff;
    border-bottom: 7px solid #f5f5f5;
    position: relative;
  }
  .icon-ca {
    position: absolute;
    right: 7px;
    top: 10px;
    color: #b1b1b1;
    font-size: 14px;
  }
  .name_and_phone {
    margin-bottom: 5px;
  }
  .adress_and_detailadd {
    padding-bottom: 10px;
    border-bottom: 1px solid #e4e2e2;
  }
  .item-bottom {
    height: 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: #b1b1b1;
  }
  .zhiding {
    margin-left: 15px;
  }
  .btn {
    width: 90vw;
    height: 45px;
    background-color: #e02e24;
    text-align: center;
    line-height: 45px;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    color: #fff;
    margin: 10px auto;
  }
  .btn span {
    font-size: 16px;
  }
  .btn .icon-jia {
    font-size: 18px;
    background-color: #fff;
    color: #e02e24;
  }
  .icon-gouSolid {
    float: right;
    color: #39da11;
  }
  .icon-gou, .icon-yuanquan {
    font-size: 20px;
    vertical-align: middle;
  }
  .active {
    color: #e02e24;
  }
</style>