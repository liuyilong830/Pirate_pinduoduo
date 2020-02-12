const express = require('express')
const CRUD = require('./curd')
const SCRUD = require('./CRUD/searchCRUD')
const LoginCRUD = require('./CRUD/login')
const svgCaptcha = require('svg-captcha')
const sendCode = require('./sendCode')

const router = express.Router()

router.get('/hot/static' , (req,res) => {
  const message = {}

  Promise.all([
    CRUD.getSwiperList(),
    CRUD.getScroller(),
    CRUD.getSubsidy(),
    CRUD.hotSubsidies(),
    CRUD.gifImages()
  ]).then(data => {
    message.swiperList = data[0],
    message.scrollerList = data[1],
    message.subsidy = data[2][0]
    message.subsidy.hotItem = data[3],
    message.image = data[4][0]
    // console.log(data)
    res.json({
      success_code: 200,
      message
    })
  }).catch(err => {
    res.json({
      err_code: 500,
      message: err.message
    })
  })
})
// 请求商品不同页的数据
router.get('/hot/goods' , (req,res) => {
  if(req.query.page == 1) {
    const message = {}
    Promise.all([
      CRUD.goodsListPage1()
    ]).then(data => {
      message.goodsList = data[0]
      res.json({
        success_code: 200,
        message
      })
    }).catch(err => {
      res.json({
        err_code: 500,
        message: err.message
      })
    })
  } else if(req.query.page == 2) {
    const message = {}
    Promise.all([
      CRUD.goodsListPage2()
    ]).then(data => {
      message.goodsList = data[0]
      res.json({
        success_code: 200,
        message
      })
    }).catch(err => {
      res.json({
        err_code: 500,
        message: err.message
      })
    })
  } else if(req.query.page == 3) {
    const message = {}
    Promise.all([
      CRUD.goodsListPage3()
    ]).then(data => {
      message.goodsList = data[0]
      res.json({
        success_code: 200,
        message
      })
    }).catch(err => {
      res.json({
        err_code: 500,
        message: err.message
      })
    })
  } else if(req.query.page && req.query.page > 3) {
    res.json({
      err_code: 400,
      message: '已经到底了...'
    })
  } else {
    res.json({
      err_code: 500,
      message: '没有该路由接口...'
    })
  }
})

// 请求指定id的商品详情数据
router.get('/goods/item/:id', (req,res) => {
  var message = {}
  Promise.all([
    CRUD.getByIdItem(req.params.id),
    CRUD.getByIdSwiper(req.params.id),
    CRUD.getWelfaresPopUp(),
    CRUD.getCouponPopUp()
  ]).then(data => {
    message.itemDetail = data[0][0]
    message.swiperList = data[1]
    message.welfaresP = data[2]
    message.couponP = data[3]
    res.json({
      success_code: 200,
      message
    })
  }).catch(error => {
    console.log(error)
    res.json({
      err_code: 400,
      message: '没有该商品'
    })
  })
})
// 请求分类栏数据
router.get('/search/list' , (req,res) => {
  var message = {}
  Promise.all([
    SCRUD.getSearchList()
  ]).then(data => {
    message.searchList = data[0]

    res.json({
      success_code: 200,
      message
    })
  }).catch(err => {
    res.json({
      err_code: 400,
      message: err.message
    })
  })
})
// 请求指定sid的分类内容数据
router.get('/search/item' , (req,res) => {
  var message = {}
  Promise.all([
    SCRUD.getByIdSearchClass(req.query.sid),
    SCRUD.getByIdSearchItem(req.query.sid),
    SCRUD.getByIdSearchImg(req.query.sid),
    SCRUD.getByIdSearchBoundImg(req.query.sid)
  ]).then(data => {
    
    message.searchItem = data[0]
    message.image = data[2][0].image
    message.BoundImgs = data[3]
    for(var i = 0; i < data[0].length; i++) {
      message.searchItem[i].item = []
      for(var j = 0; j < data[1].length; j++) {
        if(data[1][j].class_id == message.searchItem[i].class_id) {
          message.searchItem[i].item.push(data[1][j])
        }
      }
    }
    res.json({
      success_code: 200,
      message
    })
  }).catch(err => {
    res.json({
      err_code: 400,
      message: err.message
    })
  })
})
// 请求获取图片验证码
router.get('/captcha/svg', (req,res) => {
  var captcha = svgCaptcha.create({
    size: 4,
    ignoreChars: '0o1i',
    noise: 3,
    color: true
  })
  // 将验证码转换为小写保存在session中方便后面校对
  req.session.text = captcha.text.toLocaleLowerCase()
  res.type('svg')
  res.send(captcha.data)
})

// 请求短信验证码
var users = {}
router.get('/login/sendCode' , (req,res) => {
  var phone = req.query.phone
  var code = sendCode.RandMonCode(6)
  // 成功
  users[phone] = code
  setTimeout(() => {
    res.json({
      success_code: 200,
      message: code
    })
  }, 1500)
})
// 短信登录
router.post('/api/login/code' , (req,res) => {
  // 验证码不正确
  if(users[req.body.phone] !== req.body.code) {
    return res.json({
      err_code: 0,
      message: '验证码不正确'
    })
  }
  // 验证码正确,判断用户是否存在
  LoginCRUD.getUserByPhone(req.body.phone).then(data => {
    // 如果数组长度为0，说明没有用户，则进行注册并登录
    if(data.length === 0) {
      // 注册新用户
      return LoginCRUD.setUserByPhone(req.body.phone)
        .then(data => {
          return LoginCRUD.getUserByPhone(req.body.phone)
      }).then(success => {
        // 保存用户的session状态
        req.session.mode = true
        success[0].mode = req.session.mode
        req.session.userId = success[0].uid
        res.json({
          success_code: 200,
          message: '即将跳转登录...',
          userInfo: success[0]
        })
      })
      .catch(err => {
        res.json({
          err_code: 500,
          message: '服务器繁忙,请稍后再试...'
        })
      })
    }
    // 存在该用户，则直接登录
    req.session.mode = true
    req.session.userId = data[0].uid
    data[0].mode = req.session.mode
    res.json({
      success_code: 200,
      message: '即将跳转登录...',
      userInfo: data[0]
    })
  }).catch(err => {
    console.log(err)
  })
})
// 账号密码登录
router.post('/api/login/imgcode' , (req,res) => {
  // 图形验证码不正确
  var imgcode = req.body.imgcode.toLowerCase()
  if(req.session.text !== imgcode) {
    return res.json({
      err_code: 0,
      message: '验证码不正确'
    })
  }
  delete req.session.text
  // 图形验证码正确，判断账号是否存在
  LoginCRUD.getUserByName(req.body.username).then(data => {
    // 如果数组长度等于0，代表没有该用户名，则注册并登录
    if(data.length === 0) {
      return LoginCRUD.setUserByNameAndPwd(req.body.username,req.body.password).then(data => {
        return LoginCRUD.getUserByName(req.body.username)
      }).then(success => {
        // 保存用户的session状态
        req.session.mode = false
        success[0].mode = req.session.mode
        req.session.userId = success[0].uid
        res.json({
          success_code: 200,
          message: '即将跳转登录...',
          userInfo: success[0]
        })
      })
      .catch(err => {
        res.json({
          err_code: 500,
          message: '服务器繁忙,请稍后再试...'
        })
      })
    }
    // 有用户名，判断密码是否正确
    LoginCRUD.getUserByPwd(req.body.password).then(success => {
      // 如果success长度为0代表密码错误
      if(success.length == 0) {
        return res.json({
          err_code: 1,
          message: '密码错误,请重试...'
        })
      }
      // 密码正确
      req.session.mode = false
      success[0].mode = req.session.mode
      req.session.userId = success[0].uid
      res.json({
        success_code: 200,
        message: '即将跳转登录...',
        userInfo: success[0]
      })
    }).catch(err => {
      res.json({
        err_code: 500,
        message: '服务器繁忙,请稍后再试...'
      })
    })
  }).catch(err => {
    res.json({
      err_code: 500,
      message: '服务器繁忙,请稍后再试...'
    })
  })
})
// 刷新后保持状态
router.get('/api/user_info' , (req,res) => {
  if(!req.session.userId) {
    return res.json({
      err_code: 2,
      message: '请先登录...'
    })
  }
  LoginCRUD.getUserByUserId(req.session.userId).then(data => {
    // 进入else之后说明存在该用户，则需要将对象传给组件中用以展示
    data[0].mode = req.session.mode
    delete req.session.mode
    res.json({
      success_code: 200,
      message: data[0]
    })
  }).catch(err => {
    res.json({
      err_code: 500,
      message: '请求失败...'
    })
  })
})

module.exports = router