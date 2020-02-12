import {request} from './index'

export function getCode (phone) {
  return request({
    url: '/login/sendCode',
    params: {
      phone
    }
  })
}
// 通过手机号注册或登录
export function loginOrRegister (data) {
  return request({
    method: 'POST',
    url: '/api/login/code',
    data
  })
}
// 通过账号密码注册或登录
export function loginOrRegisterByUsername (data) {
  return request({
    method: 'POST',
    url: '/api/login/imgcode',
    data
  })
}
// 
export function loginUser () {
  return request({
    url: '/api/user_info'
  })
}