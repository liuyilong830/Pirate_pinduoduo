import Vue from 'vue'
import App from './App'
import router from './router'
import store from './store/store'
import { Swipe, SwipeItem } from 'vant';
import VueLazyLoad from 'vue-lazyload'
import FastClick from 'fastclick'
import 'mint-ui/lib/style.css';

Vue.use(Swipe);
Vue.use(SwipeItem);
Vue.use(VueLazyLoad, {
  preLoad: 1.3,
  error: require('../src/assets/img/lazy-load.gif'),
  loading: require('../src/assets/img/lazy-load.gif'),
  attempt: 1
})
// 解决移动端300ms延迟
FastClick.attach(document.body)

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  render: h => h(App)
})
