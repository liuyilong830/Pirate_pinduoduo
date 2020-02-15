export default {
  setUserInfo(state,payload) {
    window.sessionStorage.setItem('userInfo',JSON.stringify(payload.userInfo))
    state.userInfo = payload.userInfo
  },
  setDateTime(state,payload) {
    var obj = Object.assign({},state.userInfo,payload)
    window.sessionStorage.setItem('userInfo',JSON.stringify(obj))
    state.userInfo = obj
  }
}