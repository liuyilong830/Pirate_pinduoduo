import {request} from './index'

export function setRecAddress (uid,payload) {
  return request({
    method: 'POST',
    url: '/set/rec_address',
    data: {
      uid,
      payload
    }
  })
}