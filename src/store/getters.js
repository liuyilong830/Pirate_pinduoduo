export default {
  showLoginComp(state) {
    return state.userInfo.uid
  },
  getUserInfo(state) {
    return state.userInfo
  }
}