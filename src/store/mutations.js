export default {
  setUserInfo(state,payload) {
    /* for(var key in payload.userInfo) {
      window.sessionStorage.setItem(key,payload.userInfo[key] + '')
      state.userInfo[key] = payload.userInfo[key]
    } */
    state.userInfo = payload.userInfo
  }
}