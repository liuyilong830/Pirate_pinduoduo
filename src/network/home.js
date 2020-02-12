import {request} from './index'

// 获取热门版块的静态资源
export function getHotStatic() {
  return request({
    url: 'hot/static'
  })
}

export function getGoodsList(page) {
  return request({
    url: 'hot/goods',
    params: {
      page
    }
  })
}