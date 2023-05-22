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
    function goDel(){
    	if(confirm("삭제하시겠습니까?")){
    		location.href="delete.do?no=${data.no }";
    	}
    }
    </script>
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/jsp/include/header.jsp" %>
      	<div class="sub">
            <div class="size">
                <h3 class="sub_title">게시판</h3>
                <div class="bbs">
                    <div class="view">
                        <div class="title">
                            <dl>
                                <dt>${data.title } </dt>
                                <dd class="date">작성일 : ${data.regdate } </dd>
                            </dl>
                        </div>
                        <div class="cont"><p>${data.content }</p> </div>
                        <dl class="file">
                            <dt>첨부파일 </dt>
                            <dd>
                            <a href="#" 
                            target="_blank">첨부파일.pptx [38.07KB] </a></dd>
                        </dl>
                                    
                        <div class="btnSet clear">
                            <div class="fl_l">
                            	<a href="index.do" class="btn">목록으로</a>
                            	<a href="edit.do?no=${data.no }" class="btn">수정</a>
                            	<a href="javascript:goDel()" class="btn">삭제</a>
                            </div>
                        </div>
                
                    </div>
                    <form method="post" name="frm" id="frm" action="" enctype="multipart/form-data" >
	            	<table class="board_write">
	                	<colgroup>
	                    	<col width="*" />
	                    	<col width="100px" />
	                	</colgroup>
	                    <tbody>
	                    	<tr>
	                        	<td>
	                            	<textarea name="contents" id="contents" style="height:50px;" placeholder="댓글을 입력해 주세요"></textarea>
	                            </td>
	                            <td>
	                                <div class="btnSet"  style="text-align:right;">
	                                	<a class="btn" href="javascript:goSave();">저장 </a>
	                                </div>
	                            </td>
	                        </tr>
	                    </tbody>
	                </table>
	                <table class="list">
                        <colgroup>
                            <col width="100px" />
                            <col width="*" />
                            <col width="100px" />
                            <col width="60px" />
                            <col width="60px" />
                        </colgroup>
                        <tbody>
                        	
                            <tr>
                                <td class="first" colspan="8">등록된 글이 없습니다.</td>
                            </tr>

                                    
                            <tr>
                                <td class="writer">
                                    홍길동
                                </td>
                                <td class="txt_l">
                                    <a href="board_view.html">게시글 제목</a>
                                </td>
                                <td class="date">2021-01-01</td>
                                <td> [수정] </td>
                                <td> [삭제] </td>
                            </tr>
                        </tbody>
                    </table>
	             </form>
                </div>
                <div>
	            
             	</div>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
    </div>
</body>
</html>