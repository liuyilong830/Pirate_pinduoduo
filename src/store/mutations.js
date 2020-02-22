export default {
  setUserInfo(state,payload) {
    window.localStorage.setItem('userInfo',JSON.stringify(payload.userInfo))
    state.userInfo = payload.userInfo
  },
  setBaseInfo(state,payload) {
    var obj = Object.assign({},state.userInfo,payload)
    window.localStorage.setItem('userInfo',JSON.stringify(obj))
    state.userInfo = obj
  },
  setToken(state,token) {
    window.localStorage.setItem('token',token)
    state.token = token
  },
  signOut(state) {
    state.userInfo = null
    state.token = null
    window.localStorage.removeItem('userInfo')
    window.localStorage.removeItem('token')
    window.localStorage.removeItem('priceInfo')
    window.localStorage.removeItem('shopInfo')
    window.localStorage.removeItem('recAddress')
  },
  setGoodsPrice(state,payload) {
    state.priceInfo = payload
    window.localStorage.setItem('priceInfo',JSON.stringify(payload))
  },
  setShopInfo(state,payload) {
    state.shopInfo = payload
    window.localStorage.setItem('shopInfo',JSON.stringify(payload))
  },
  changeCount(state,payload) {
    state.priceInfo = Object.assign({},state.priceInfo,payload)
    // window.localStorage.setItem('priceInfo',JSON.stringify(state.priceInfo))
  },
  setRecAddress(state,payload) {
    state.recAddress = payload
    console.log(state.recAddress)
    window.localStorage.setItem('recAddress',JSON.stringify(payload))
  },
  initRecAddress(state,payload) {
    state.recAddress = payload
    window.localStorage.setItem('recAddress',JSON.stringify(state.recAddress))
  },
  deleteAddress(state,index) {
    state.recAddress.splice(index,1)
    window.localStorage.setItem('recAddress',JSON.stringify(state.recAddress))
  },
  updateAddress(state,payload) {
    state.recAddress.splice(payload.index,1,payload.obj)
    window.localStorage.setItem('recAddress',JSON.stringify(state.recAddress))
  }
}