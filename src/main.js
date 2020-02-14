import Vue from 'vue'
import App from './App'
import router from './router'
import store from './store/store'
import { Swipe, SwipeItem } from 'vant';
import { Popup } from 'mint-ui';

Vue.component(Popup.name, Popup);

Vue.use(Swipe);
Vue.use(SwipeItem);

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  render: h => h(App)
})
