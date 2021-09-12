function checkUser() {

  var strText = document.getElementById('username').value;

  if ("" == strText) {
    document.getElementById("msg").innerHTML = "该输入项不能为空";
    return false;
  }

  // 最小长度验证
  if (strText.length < 3) {
    document.getElementById("msg").innerHTML = "输入长度不能小于3";
    return false;
  }

  // 最大长度验证
  if (strText.length > 10) {
    document.getElementById("msg").innerHTML = "输入长度不能大于10";
    return false;
  }

  // 汉字验证
  if (!/^[\u4e00-\u9fa5]+$/.test(strText)) {
    document.getElementById("msg").innerHTML = "必须输入汉字";
    return false;
  }
  document.getElementById("msg").innerHTML = "";
  return true;
}

function checkPhone() {
  var phone = document.getElementById('phonenumber').value;
  //正则表达式 
  var phoc = /^1[34578]\d{9}$/
  if (!phoc.exec(phone)) {
    document.getElementById("msgphe").innerHTML = "手机号码有误，请重填";
    return false;
  }
  document.getElementById("msgphe").innerHTML = "";
  return true;
}

function checkPassword() {
  var password = document.getElementById('password').value;
  //正则表达式
  var patrn = /^(\w){6,16}$/;
  if (!patrn.exec(password)) {
    document.getElementById("msgpass").innerHTML = "请输入6-16个字母、数字、下划线 ";
    return false
  }
  document.getElementById("msgpass").innerHTML = "";
  return true
}

