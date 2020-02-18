import Vue from 'vue'
import Router from 'vue-router'
import {getToken} from '../network/token'

Vue.use(Router)

const Home = () => import('../../views/home/Home.vue')
const Recommend = () => import('../../views/recommend/Recommend.vue')
const Search = () => import('../../views/search/Search.vue')
const Chat = () => import('../../views/chat/Chat.vue')
const Profile = () => import('../../views/profile/Profile.vue')
const Login = () => import('../../views/profile/children/Login.vue')
const PersonInfo = () => import('../../views/profile/children/PersonInfo.vue')
const Settings = () => import('../../views/setting/Settings.vue')

const Hot = () => import('../../views/home/chirdren/Hot.vue')
const Man = () => import('../../views/home/chirdren/Man.vue')
const Phone = () => import('../../views/home/chirdren/Phone.vue')
const ShoeBag = () => import('../../views/home/chirdren/ShoeBag.vue')
const Food = () => import('../../views/home/chirdren/Food.vue')
const Electric = () => import('../../views/home/chirdren/Electric.vue')
const Car = () => import('../../views/home/chirdren/Car.vue')
const Women = () => import('../../views/home/chirdren/Women.vue')
const Department = () => import('../../views/home/chirdren/Department.vue')
const Furniture = () => import('../../views/home/chirdren/Furniture.vue')
const Underwear = () => import('../../views/home/chirdren/Underwear.vue')
const HomeDecoration = () => import('../../views/home/chirdren/HomeDecoration.vue')
const Computer = () => import('../../views/home/chirdren/Computer.vue')

const Detail = () => import('../../views/detail/Detail.vue')

const routes = [
  { path: '/' , redirect: '/home' },
  { 
    path: '/home', 
    component: Home,
    children: [
      { path: '/home' , redirect: to => {
        // （下面所述必须在App.vue组件中用了keep-alive标签包裹时使用）
        // 为了让 /home 组件中的二级组件缓存的状态不被定死的重定向给破坏，我们就需要动态设置重定向的值
        if(!to.matched[0].redirect) { // 判断该值是否为undefined，如果是，一般在刚启动项目的时候发生这样的问题
          return '/home/hot'
        } else {
          return to.matched[0].redirect
        }
      }},
      { path: 'hot', component: Hot , meta:{showTabBar:true}},
      { path: 'man' , component: Man , meta:{showTabBar:true}},
      { path: 'phone' , component: Phone , meta:{showTabBar:true}},
      { path: 'shoebag' , component: ShoeBag , meta:{showTabBar:true}},
      { path: 'food' , component: Food , meta:{showTabBar:true}},
      { path: 'electric' , component: Electric , meta:{showTabBar:true}},
      { path: 'car' , component: Car , meta:{showTabBar:true}},
      { path: 'women' , component: Women , meta:{showTabBar:true}},
      { path: 'department' , component: Department , meta:{showTabBar:true}},
      { path: 'furniture' , component: Furniture , meta:{showTabBar:true}},
      { path: 'underwear' , component: Underwear , meta:{showTabBar:true}},
      { path: 'homedecoration' , component: HomeDecoration , meta:{showTabBar:true}},
      { path: 'computer' , component: Computer , meta:{showTabBar:true}}
    ]
  },
  { path: '/recommend' , component: Recommend , meta:{showTabBar:true}},
  { path: '/search' , component: Search , meta:{showTabBar:true}},
  { path: '/chat' , component: Chat , meta:{showTabBar:true}},
  { path: '/profile' , component: Profile , meta:{showTabBar:true}},
  { path: '/detail/:id' , component: Detail},
  { path: '/login' , component: Login},
  { path: '/person_info' , component: PersonInfo},
  { path: '/settings' , component: Settings}
]

const router = new Router({
  routes
})
router.beforeEach((to , from , next) => {
  var tokenStr = window.localStorage.getItem('token')
  /* if(to.path == '/profile' && !tokenStr) {
    return next('/login')
  } */
  if(to.path == '/person_info' || to.path == '/profile') {
    getToken(tokenStr).then(res => {
      // console.log(res)
      if(res.success_code == 200) {
        next()
      } else if(res.err_code == 0) {
        window.localStorage.removeItem('token')
        window.localStorage.removeItem('userInfo')
        return next('/login')
      }
    })
  }
  next()
})

export default router
