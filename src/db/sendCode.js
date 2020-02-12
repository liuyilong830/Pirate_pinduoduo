exports.RandMonCode = function (length) {
  var num = ['0','1','2','3','4','5','6','7','8','9']
  var str = ''
  for (var i = 0; i< length; i++) {
    var index = Math.floor(Math.random()*10)
    str += num[index]
  }
  return str
}