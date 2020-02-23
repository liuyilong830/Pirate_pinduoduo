<template>
  <div class="manage-address">
    <ul class="address-list">
      <li class="item" v-for="(item,index) in recAddressList" :key="index">
        <i class="iconfont icon-ca" @click="deleteItem(index)"></i>
        <div class="padding">
          <div class="item-info">
            <div class="name_and_phone">
              <span>{{item.rec_name}}</span>
              <span>{{item.rec_phone}}</span>
            </div>
            <div class="adress_and_detailadd">
              <span>{{item.rec_address}}</span>
              <span>{{item.rec_detail_add}}</span>
              <span v-if="index === 0" class="iconfont icon-gouSolid"></span>
            </div>
          </div>
          <div class="item-bottom">
            <span :class="{active: index == currentIndex}" @click="activeClick(index)">
              <span 
                class="iconfont" 
                :class="{'icon-yuanquan':index !== currentIndex, 'icon-gou':index == currentIndex}">
              </span>
              {{index == currentIndex? '已设置为默认' : '设置为默认'}}
            </span>
            <div class="change">
              <span @click="updateAddress(index)">编辑</span>
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

    <rec-address v-model="openRecAddress" v-if="openRecAddress" @confirm='newRecConfirm' :item='oneAddress' @updateConfirm='updateConfirm'></rec-address>
    <delete-item text='确定要删除该地址吗？' v-model="openDeleteItem" v-show="openDeleteItem" @confirmDelete='confirmDelete'></delete-item>
  </div>
</template>

<script>
  import RecAddress from './RecAddress'
  import {setRecAddress,deleteRecAddress,updateRecAddress} from '../../../src/network/pay'
  import {mapGetters} from 'vuex'
  import DeleteItem from '../../../src/components/common/deleteItem/DeleteItem'
  export default {
    name: 'ManageAddress',
    components: {
      RecAddress,
      DeleteItem
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    data() {
      return {
        openRecAddress: false,
        currentIndex: 0,
        openDeleteItem: false,
        deleteIndex: 0,
        updateIndex: 0,
        oneAddress: {}
      }
    },
    props: {
      recAddressList: {
        type: Array,
        default() {
          return []
        }
      }
    },
    computed: {
      ...mapGetters(['getUserId'])
    },
    methods: {
      // 点击返回按钮返回到支付页面
      closeManageAddress() {
        if(this.currentIndex !== 0) {
          this.recAddressList.splice(0,1,...this.recAddressList.splice(this.currentIndex,1,this.recAddressList[0]))
          this.currentIndex = 0
        }
        this.$emit('click',!this.$attrs.val1)
      },
      // 打开添加收货地址的弹窗
      addNewAddress() {
        this.oneAddress = {}
        this.openRecAddress = true
      },
      // 点击保存之后的回调函数，用于将数据保存在数据库、vuex、本地、临时变量中
      newRecConfirm(payload) {
        setRecAddress(this.getUserId,payload).then(res => {
          console.log(res)
          payload.aid = res.aid
          payload.uid = this.getUserId
          this.recAddressList.push(payload)
          this.$store.commit('setRecAddress',this.recAddressList)
        })
      },
      activeClick(index) {
        this.currentIndex = index
      },
      // 打开删除窗口
      deleteItem(index) {
        this.openDeleteItem = true
        this.deleteIndex = index
      },
      // 选择确定之后的回调函数
      confirmDelete() {
        deleteRecAddress(this.recAddressList[this.deleteIndex]).then(res => {
          console.log(res)
          this.recAddressList.splice(this.deleteIndex,1)
          this.$store.commit('deleteAddress',this.recAddressList)
        })
      },
      updateAddress(index) {
        this.updateIndex = index
        this.oneAddress = this.recAddressList[index]
        this.openRecAddress = true
        console.log(index)
      },
      updateConfirm(payload) {
        payload.aid = this.recAddressList[this.updateIndex].aid
        payload.uid = this.recAddressList[this.updateIndex].uid
        updateRecAddress(payload).then(res => {
          console.log(res)
          this.recAddressList.splice(this.updateIndex,1,payload)
          this.$store.commit('updateAddress',this.recAddressList)
        })
      }
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
    overflow: scroll;
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