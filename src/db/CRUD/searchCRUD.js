const connection = require('../db')

exports.getSearchList = function () {
  return new Promise((reslove,reject) => {
    var sql = 'SELECT * FROM `search_list`'
    connection.query(sql, (error,data) => {
      if(error) reject(error)
      reslove(data)
    })
  })
}

exports.getByIdSearchItem = function (sid) {
  return new Promise((reslove,reject) => {
    var sql = `
      SELECT s.class_id, s.item_name, s.img
      FROM search_item s
      where search_id = ?
    `
    connection.query(sql, sid , (error,data) => {
      if(error) reject(error)
      reslove(data)
    })
  })
}
exports.getByIdSearchClass = function(sid) {
  return new Promise((reslove,reject) => {
    var sql = `
      SELECT distinct c.class_id, c.name, c.icon
      FROM search_item s inner join classify c on s.class_id = c.class_id
      where search_id = ?
    `
    connection.query(sql, sid, (error,data) => {
      if(error) reject(error)
      reslove(data)
    })
  })
}
exports.getByIdSearchImg = function(sid) {
  return new Promise((reslove,reject) => {
    var sql = `
      SELECT image
      FROM search_list
      where search_id = ?
    `
    connection.query(sql, sid, (error,data) => {
      if(error) reject(error)
      reslove(data)
    })
  })
}
exports.getByIdSearchBoundImg = function(sid) {
  return new Promise((reslove,reject) => {
    var sql = `
      SELECT image
      FROM tv_imgs
      where tv_id = ?
    `
    connection.query(sql, sid, (error,data) => {
      if(error) reject(error)
      reslove(data)
    })
  })
}
