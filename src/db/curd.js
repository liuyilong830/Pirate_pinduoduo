const connection = require('./db')

exports.getSwiperList = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `swiper`' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}

exports.getScroller = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `home_scroller`' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}

exports.getSubsidy = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `hot_subsidy`' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}

exports.hotSubsidies = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `subsidies_item`' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}

exports.gifImages = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `gif`' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}
// 查询 goods 表中 1到15条数据
exports.goodsListPage1 = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `goods` limit 0, 15' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}
// 查询 goods 表中 16到30条数据
exports.goodsListPage2 = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `goods` limit 15, 15' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}
// 查询 goods 表中 31到45条数据
exports.goodsListPage3 = function () {
  return new Promise((resolve,reject) => {
    connection.query('select * from `goods` limit 30, 15' , function (error,data) {
      if (error) reject(error)
      resolve(data)
    })
  })
}
// 查询指定id的good详情数据
exports.getByIdItem = function(id) {
  var sql = `
    SELECT d.icon_img,g.price,d.old_price,d.count,d.shop_img,d.title,
          d.welfare,d.coupon,d.welfares,d.base_seller_img,d.base_seller,
          d.base_seller_num,d.evaluation,d.first_eval,d.second_eval,
          d.shop_icon,d.commodity,d.describe,d.expensive_price,g.first_fan,g.second_fan,g.shop
    FROM detail d inner join goods g on d.iid = g.sid
    where g.sid = ?
  `
  return new Promise((resolve,reject) => {
    connection.query(sql, id , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 查询指定id的详情页轮播图数据
exports.getByIdSwiper = function(id) {
  var sql = `select images from item_swiper where cid = ?`
  return new Promise((resolve,reject) => {
    connection.query(sql, id , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}

exports.getWelfaresPopUp = function() {
  var sql = `select * from welfares_popup`
  return new Promise((resolve,reject) => {
    connection.query(sql, function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}

exports.getCouponPopUp = function() {
  var sql = `select * from coupon_popup`
  return new Promise((resolve,reject) => {
    connection.query(sql, function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据sid获取该商品的尺寸的所有名称和对应的标题文字
exports.getPaySnaemById = function(sid) {
  var sql = `
    select DISTINCT s.sname, p.i_title
    from pay_price p inner join size s on p.iid = s.iid
    where p.sid = ?
  `
  return new Promise((resolve,reject) => {
    connection.query(sql, sid , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据sid获取该商品的所有种类的名称和对应的标题文字
exports.getPayTnameById = function(sid) {
  var sql = `
    select distinct t.tname, p.t_title
    from pay_price p inner join type t on p.tid = t.tid
    where p.sid = ?
  `
  return new Promise((resolve,reject) => {
    connection.query(sql, sid , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据sid获取该商品对应尺寸和种类的各种价格数据
exports.getPayPriceById = function (sid) {
  var sql = `
    select s.sname, t.tname, p.new_price, p.old_price, p.exp_price
    from size s inner join pay_price p on s.iid = p.iid inner join type t on p.tid = t.tid
    where p.sid = ?
  `
  return new Promise((resolve,reject) => {
    connection.query(sql, sid , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据uid传入该用户的收货地址信息
exports.insertRecAddressInfo = function (uid,payload) {
  var sql = `
    insert into address(uid,rec_name,rec_phone,rec_address,rec_detail_add,aid) values(?,?,?,?,?,null);
  `
  return new Promise((resolve,reject) => {
    connection.query(sql, [uid,payload.rec_name,payload.rec_phone,payload.rec_address,payload.rec_detail_add] , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}

exports.getAddressByAll = function (payload) {
  var sql = `
    select *
    from address 
    where uid=? and rec_name=? and rec_phone=? and rec_address=? and rec_detail_add=?
  `
  return new Promise((resolve,reject) => {
    connection.query(sql, [
      payload.uid,
      payload.rec_name,
      payload.rec_phone,
      payload.rec_address,
      payload.rec_detail_add
    ] , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}

exports.getAllAddressCount = function () {
  var sql = 'select count(*) as count from address'
  return new Promise((resolve,reject) => {
    connection.query(sql , function (error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据uid查询该用户的收货地址
exports.getRecAddressInfo = function (uid) {
  var sql = `select * from address where uid = ?`
  return new Promise((resolve,reject) => {
    connection.query(sql,uid, function(error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据收货地址删除该用户的指定收货地址
exports.deleteAddress = function (payload) {
  var sql = `delete from address where uid= ? and rec_name=? and rec_phone=? and rec_address=? and rec_detail_add=?`
  return new Promise((resolve,reject) => {
    connection.query(sql,[
      payload.uid,
      payload.rec_name,
      payload.rec_phone,
      payload.rec_address,
      payload.rec_detail_add
    ], function(error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据uid，更新该用户的指定收货地址
exports.updateAddress = function (payload) {
  var sql = `
    update address
    set rec_name=?, rec_phone=?, rec_address=?, rec_detail_add=?
    where uid = ? and aid = ?
  `
  return new Promise((resolve,reject) => {
    connection.query(sql,[
      payload.rec_name,
      payload.rec_phone,
      payload.rec_address,
      payload.rec_detail_add,
      payload.uid,
      payload.aid
    ], function(error,data) {
      if(error) reject(error)
      resolve(data)
    })
  })
}