export default {
  getUserInfo(state) {
    return state.userInfo
  },
  getPayMoney(state) {
    if(!state.priceInfo) return null
    var str = state.priceInfo.price.toString().split('.')[1]
    if(str) {
      return (state.priceInfo.price * (str.length*10) * state.priceInfo.count)/ (str.length*10)
    }
    return state.priceInfo.price * state.priceInfo.count
  },
  getUserId(state) {
    if(!state.userInfo) return null
    return state.userInfo.uid
  },
  getRecAddress(state) {
    return state.recAddress
  }
}