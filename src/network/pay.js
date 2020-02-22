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

export function getRecAddressByAll (payload) {
  return request({
    url: '/getByAll/rec_address',
    params: {
      payload
    }
  })
}

export function getRecAddress (uid) {
  return request({
    url: '/get/rec_address',
    params: {
      uid
    }
  })
}

export function deleteRecAddress (data) {
  return request({
    method: 'POST',
    url: '/delete/rec_address',
    data
  })
}

export function updateRecAddress (payload) {
  return request({
    method: 'POST',
    url: '/update/rec_address',
    data: {
      payload
    }
  })
}