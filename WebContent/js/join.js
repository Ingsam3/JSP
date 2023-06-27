/*
join.js
*/

function join_check(){
	if($.trim($("#mem_id").val()) ==""){
		alert("회원아이디를 입력하세요!");
		$("#mem_id").val("").focus();
		return false;
	}
	if($.trim($("#mem_pwd").val()) ==""){
		alert("비밀번호를 입력하세요!");
		$("#mem_pwd").val("").focus();
		return false;
	}
	if($.trim($("#mem_name").val()) ==""){
		alert("회원이름을 입력하세요!");
		$("#mem_name").val("").focus();
		return false;
	}
	if($.trim($("#mem_phone").val()) ==""){
		alert("폰번호를 입력하세요!");
		$("#mem_phone").val("").focus();
		return false;
	}
	if($.trim($("#mem_email").val()) ==""){
		alert("이메일을 입력하세요!");
		$("#mem_email").val("").focus();
		return false;
	}
	
}