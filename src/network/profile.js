import {request} from './index'

export function getUser() {
  return request({
    url: '/user_info'
  })
}

export function setUserBaseInfo(data) {
  return request({
    method: 'POST',
    url: '/user_baseInfo',
    data
  })
}