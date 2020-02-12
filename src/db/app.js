const express = require('express')
const cors = require('cors')  //  解决跨域问题
const session = require('express-session')
const router = require('./router')
const bodyParser = require('body-parser')

const app = express()

app.use(cors({credentials: true, origin: 'http://localhost:8080'}))

app.use(session({
  secret: 'keyboard cat', //  加密
  cookie: {
    maxAge: 1000 * 60 * 60 * 24
  },
  resave: false,
  saveUninitialized: true
}))

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())



app.use(router)

app.listen(3000,function () {
  console.log('访问：http://localhost:3000')
})