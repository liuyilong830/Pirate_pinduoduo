const connection = require('../db')

// 通过手机号注册用户
exports.setUserByPhone = function (phone) {
  return new Promise((reslove,reject) => {
    var sql = 'insert into users(phone) values(?)'
    connection.query(sql, phone , (error,data) => {
      if(error) reject(error)
      reslove(data)
    })
  })
}
// 通过手机号查询用户是否存在方法
exports.getUserByPhone = function (phone) {
  return new Promise((resolve,reject) => {
    var sql = 'select * from users where phone = ?'
    connection.query(sql, phone , (error,data) => {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 通过账号查询用户是否存在
exports.getUserByName = function (username) {
  return new Promise((resolve,reject) => {
    var sql = 'select * from users where username=?'
    connection.query(sql, username , (error,data) => {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 通过密码判断登录是否成功
exports.getUserByPwd = function (password) {
  return new Promise((resolve,reject) => {
    var sql = 'select * from users where password=?'
    connection.query(sql, password , (error,data) => {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 通过账号和密码注册用户
exports.setUserByNameAndPwd = function (username,password) {
  return new Promise((resolve,reject) => {
    var sql = 'insert into users(username,password) values(?,?)'
    connection.query(sql, [
      username,
      password
    ], (error,data) => {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据用户的id进行查询用户是否存在
exports.getUserByUserId = function (userId) {
  return new Promise((resolve,reject) => {
    var sql = 'select * from users where uid = ?'
    connection.query(sql, userId , (error,data) => {
      if(error) reject(error)
      resolve(data)
    })
  })
}
// 根据用户的id修改信息
exports.setUserBirthday = function (uid, value) {
  return new Promise((resolve,reject) => {
    var sql = 'update users set date=? where uid=?'
    connection.query(sql, [value,uid] , (error,data) => {
      if(error) reject(error)
      resolve(data)
    })
  })
}