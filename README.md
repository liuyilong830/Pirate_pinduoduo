# pdd

> 一个用vue开发的简易版拼多多，有首页、详情页、登录、设置个人信息页、收货地址页等等，因为数据的采集量不够，大家如果演示的话就只看前几个商品即可，后面的商品内部详情页数据我并没有采集，请见谅


## Build Setup

### 数据库文件在 src -> assets -> sql 中，使用的是mysql数据库
``` bash
# 通过该命令将依赖包全部导入
npm install

# 运行服务
npm run dev

# 因为是前后端都是自己写的，所以需要启动mysql数据库服务（cd到src下的db目录中运行下面命令）
nodemon app.js

# 项目打包
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).
