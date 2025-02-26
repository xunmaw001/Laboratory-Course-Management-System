import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import shebeishiwu from '@/views/modules/shebeishiwu/list'
    import jiaoshikebiao from '@/views/modules/jiaoshikebiao/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import jieyongjilu from '@/views/modules/jieyongjilu/list'
    import shiyanshixinxi from '@/views/modules/shiyanshixinxi/list'
    import yuyuejilu from '@/views/modules/yuyuejilu/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import shiyanchengji from '@/views/modules/shiyanchengji/list'
    import shebeixinxi from '@/views/modules/shebeixinxi/list'
    import guihaijilu from '@/views/modules/guihaijilu/list'
    import shiyankecheng from '@/views/modules/shiyankecheng/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/shebeishiwu',
        name: '设备事务',
        component: shebeishiwu
      }
      ,{
	path: '/jiaoshikebiao',
        name: '教师课表',
        component: jiaoshikebiao
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/jieyongjilu',
        name: '借用记录',
        component: jieyongjilu
      }
      ,{
	path: '/shiyanshixinxi',
        name: '实验室信息',
        component: shiyanshixinxi
      }
      ,{
	path: '/yuyuejilu',
        name: '预约记录',
        component: yuyuejilu
      }
      ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
      ,{
	path: '/shiyanchengji',
        name: '实验成绩',
        component: shiyanchengji
      }
      ,{
	path: '/shebeixinxi',
        name: '设备信息',
        component: shebeixinxi
      }
      ,{
	path: '/guihaijilu',
        name: '归还记录',
        component: guihaijilu
      }
      ,{
	path: '/shiyankecheng',
        name: '实验课程',
        component: shiyankecheng
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
