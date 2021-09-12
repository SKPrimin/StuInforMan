
function checkUser() {

	const strText = document.getElementById('User').value;

	if ("" == strText) {
		document.getElementById("msg").innerHTML = "该输入项不能为空";
		return false;
	}

/*	// 最小长度验证
	if (strText.length < 3) {
		document.getElementById("msg").innerHTML = "输入长度不能小于3";
		return false;
	}*/

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
	const phone = document.getElementById('Telephone').value;
	//正则表达式
	const phoc = /^1[34578]\d{9}$/;
	if (!phoc.exec(phone)) {
		document.getElementById("msgphe").innerHTML = "手机号码有误，请重填";
		return false;
	}
	document.getElementById("msgphe").innerHTML = "";
	return true;
}

function checkPassword() {
	const password = document.getElementById('Password').value;
	//正则表达式
	const patrn = /^(\w){6,16}$/;
	if (!patrn.exec(password)) {
		document.getElementById("msgpass").innerHTML = "请输入6-16个字母、数字、下划线 ";
		return false
	}
	document.getElementById("msgpass").innerHTML = "";
	return true
}

function checkPassword2() {
	const password2 = document.getElementById('Password2').value;
	const password = document.getElementById('Password').value;
	//正则表达式

	if (password2 !== password ) {
		document.getElementById("msgpass2").innerHTML = "两次密码输入不一致";
		return false
	}
	document.getElementById("msgpass2").innerHTML = "";
	return true
}

function checkPasswordin() {
	const password = document.getElementById('Passwordin').value;
	//正则表达式
	const patrn = /^(\w){6,16}$/;
	if (!patrn.exec(password)) {
		document.getElementById("msgpassin").innerHTML = "请输入6-16个字母、数字、下划线 ";
		return false
	}
	document.getElementById("msgpassin").innerHTML = "";
	return true
}

function checkUserin() {

	const strText = document.getElementById('Userin').value;

	if ("" == strText) {
		document.getElementById("msgin").innerHTML = "该输入项不能为空";
		return false;
	}

/*	// 最小长度验证
	if (strText.length < 3) {
		document.getElementById("msgin").innerHTML = "输入长度不能小于3";
		return false;
	}*/

	// 最大长度验证
	if (strText.length > 10) {
		document.getElementById("msgin").innerHTML = "输入长度不能大于10";
		return false;
	}

	// 汉字验证
	if (!/^[\u4e00-\u9fa5]+$/.test(strText)) {
		document.getElementById("msgin").innerHTML = "必须输入汉字";
		return false;
	}
	document.getElementById("msgin").innerHTML = "";
	return true;
}