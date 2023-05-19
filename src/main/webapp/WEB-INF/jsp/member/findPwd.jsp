<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/project/css/reset.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <title>Document</title>
    <link rel="stylesheet" href="/project/css/style.css"/>
    <link rel="stylesheet" href="/project/css/contents.css"/>
    <script src="/project/js/common.js"></script>
    <script>
    	function findPwd() {
    		if ($("#name").val().trim() == '') {
    			alert("이름을 입력해 주세요");
    			$("#name").focus();
    			return false;
    		}
    		if ($("#id").val().trim() == '') {
    			alert("아이디를 입력해 주세요");
    			$("#id").focus();
    			return false;
    		}
    		$.ajax({
    			url:"findPwd.do",
    			method: "post",
    			data:{
    				name: $("#name").val(),
    				id: $("#id").val()
    			},
    			success : function(res) {
    				if(res == "fail"){
    					$("#msg").text("해당 회원이 존재하지 않습니다.");
    				} else{
    					alert("임시비밀번호를 메일로 발송했습니다.");
    				}
    			}
    		});
    		//submit 버튼 비활성화
    		return false;
    	}
    </script>
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/jsp/include/header.jsp" %>
        <form id="board1" name="board1" onsubmit="return findPwd();"><!-- header에서 id="board"이미 사용중이라서 board2로 함 -->
            <div class="sub">
                <div class="size">
                    <h3 class="sub_title">비밀번호 찾기</h3>
                    
                    <div class="member">
                        <div class="box">
                            <fieldset class="login_form">
                                <ul>
                                    <li><input type="text" id="name" name="name" placeholder="이름"></li>
                                    <li><input type="text" id="id" name="id" placeholder="아이디"></li>
                                     <li id="msg"></li>
                                </ul>
                                <div class="login_btn"><input type="submit" value="비밀번호 찾기" alt="비밀번호 찾기" /></div>
                            </fieldset>
                            <div class="btnSet clear">
                                <div>
                                    <a href="login.do" class="btn">로그인</a> 
                                    <a href="findId.do" class="btn">아이디 찾기</a>
                                </div>
                            </div>
                        </div>
                    </div>
        
                </div>
            </div>
        </form>
        <%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
    </div>
</body>
</html>