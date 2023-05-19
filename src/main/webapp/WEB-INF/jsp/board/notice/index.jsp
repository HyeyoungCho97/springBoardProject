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
    	function goWrite(){
    		<c:if test="${empty loginSession}">
    			alert("로그인 후 사용 가능합니다.");
    			location.href="/project/member/login.do";
    		</c:if>
    		<c:if test="${!empty loginSession}">
    			location.href="write.do";
    		</c:if>
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
                    <table class="list">
                    <p><span><strong>총 ${result.totalCount }개</strong>  |  ${noticeVO.page }/${result.totalPage }페이지</span></p>
                        <caption>게시판 목록</caption>
                        <colgroup>
                            <col width="80px" />
                            <col width="*" />
                            <col width="100px" />
                            <col width="100px" />
                            <col width="100px" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>조회수</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
							<c:if test="${empty result.list }">
                            <tr>
                                <td class="first" colspan="8">등록된 글이 없습니다.</td>
                            </tr>
							</c:if>
                            <c:forEach var="vo" items="${result.list }">
                            <tr>
                                <td>${vo.no }</td>
                                <td class="txt_l">
                                    <a href="view.do?no=${vo.no }">${vo.title }</a>
                                </td>
                                <td class="writer">
                                 	${vo.membername }
                                </td>
                                <td >${vo.viewcount }</td>
                                <td class="date">${vo.regdate }</td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <!-- set BUTTON -->
                    <div class="btnSet"  style="text-align:right;">
                        <a class="btn" href="javascript:goWrite()">글작성 </a>
                    </div>
                    <div class="pagenate clear">
                        <ul class='paging'>
                        	<c:if test="${result.prev == true }">
                        		<a href="index.do?page=${result.startPage-1 }&stype=${param.stype==null?'all':param.stype }&sword=${param.sword}">[이전]</a>
                        	</c:if>
                       		<c:forEach begin="${result.startPage }" end="${result.endPage }" var="num">
                       			<li><a href='index.do?page=${num }&stype=${param.stype==null?'all':param.stype }&sword=${param.sword}' 
                       				<c:if test="${noticeVO.page==num }">class='current'</c:if>>
                       				${num }
                       				</a></li>
                           	</c:forEach>
                           	<c:if test="${result.next == true }">
                        		<a href="index.do?page=${result.endPage+1 }&stype=${param.stype==null?'all':param.stype }&sword=${param.sword}">[다음]</a>
                        	</c:if>
                        </ul> 
                    </div>
                
                    <!-- 페이지처리 -->
                    <div class="bbsSearch">
                        <form method="get" name="searchForm" id="searchForm" action="index.do">
                            <span class="srchSelect">
                                <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
                                    <option value="all">전체</option>
                                    <option value="title" <c:if test="${param.stype=='title' }" >selected</c:if>>제목</option>
                                    <option value="content" <c:if test="${param.stype=='content' }" >selected</c:if>>내용</option>
                                </select>
                            </span>
                            <span class="searchWord">
                                <input type="text" id="sword" name="sword" value="${param.sword }"  title="검색어 입력">
                                <input type="button" id="" value="검색" title="검색">
                            </span>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
    </div>
</body>
</html>