import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

const Home = () => import('../../views/home/Home.vue')
const Recommend = () => import('../../views/recommend/Recommend.vue')
const Search = () => import('../../views/search/Search.vue')
const Chat = () => import('../../views/chat/Chat.vue')
const Profile = () => import('../../views/profile/Profile.vue')
const Login = () => import('../../views/profile/children/Login.vue')

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
      { path: 'hot', component: Hot},
      { path: 'man' , component: Man},
      { path: 'phone' , component: Phone},
      { path: 'shoebag' , component: ShoeBag},
      { path: 'food' , component: Food},
      { path: 'electric' , component: Electric},
      { path: 'car' , component: Car},
      { path: 'women' , component: Women},
      { path: 'department' , component: Department},
      { path: 'furniture' , component: Furniture},
      { path: 'underwear' , component: Underwear},
      { path: 'homedecoration' , component: HomeDecoration},
      { path: 'computer' , component: Computer}
    ]
  },
  { path: '/recommend' , component: Recommend },
  { path: '/search' , component: Search },
  { path: '/chat' , component: Chat },
  { path: '/profile' , component: Profile },
  { path: '/detail/:id' , component: Detail},
  { path: '/login' , component: Login}
]

export default new Router({
  routes
})
