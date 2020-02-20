export default {
  getUserInfo(state) {
    return state.userInfo
  },
  getPayMoney(state) {
    var str = state.priceInfo.price.toString().split('.')[1]
    if(str) {
      return (state.priceInfo.price * (str.length*10) * state.priceInfo.count)/ (str.length*10)
    }
    return state.priceInfo.price * state.priceInfo.count
  }
}