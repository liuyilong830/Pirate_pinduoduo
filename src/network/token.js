import {request} from './index'

export function getToken(token) {
  return request({
    url: '/api/token',
    method: 'POST',
    data: {
      token
    }
  })
}