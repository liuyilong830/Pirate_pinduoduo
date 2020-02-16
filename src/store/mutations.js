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
  }
}