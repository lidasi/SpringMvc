/* Verification 验证 */

/*验证手机号格式*/
function verificationMobile(mobile){
	var telreg = /^1[0-9]{10}$/;
	var flag=true;
	var flagStr="";
	if (!telreg.test(mobile)) {
	    flag=false;
	    flagStr="请输入正确格式的手机号";
	}
	return [flag,flagStr];
}

/*验证密码格式*/
function verificationPassword(pass){
	var mmyz=/^[A-Za-z0-9_]{6,12}$/;
	var flag=true;
	var flagStr="";
	if(pass.length < 6 ||pass.length>12){
		flag=false;
		flagStr="密码长度范围在6~12位";
	}else if(!mmyz.test(pass)){
		flag=false;
		flagStr="密码只能包含数字、英文字母和下划线";
	}
	return  [flag,flagStr];
}

/*验证6位数字验证码*/
function verificationCode(code){
	code = code.replace(/^\s+|\s+$/g,"");//去除2端空格
	var mmyz=/^[0-9]{6}$/;
	var flag=true;
	var flagStr="";
	 if(!mmyz.test(code)){
		flag=false;
		flagStr="验证码是6位数字";
	}
	return  [flag,flagStr];
}
/*通用*/
function verificationObject(obj,reg){
	 if(!reg.test(obj)){
		 return false;			
	 }else{
		 return true;		 
	 }
}