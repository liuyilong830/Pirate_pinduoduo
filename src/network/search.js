import {request} from './index'

export function getSearchList() {
  return request({
    url: '/search/list'
  })
}

export function getSearchItem(sid) {
  return request({
    url: '/search/item',
    params: {
      sid
    }
  })
}