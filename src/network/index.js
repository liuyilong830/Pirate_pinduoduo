import axios from 'axios'

export function request(config) {
  const instance = axios.create({
    baseURL: 'http://vue_pdd.coderlyl.cn//api/',
    timeout: 5000,
    withCredentials: true
  })

  instance.interceptors.request.use(config => {
    return config;
  },err => {
    console.log(err);
  })

  instance.interceptors.response.use(res => {
    return res.data;
  }, err => {
    console.log(err);
  })

  return instance(config)
}