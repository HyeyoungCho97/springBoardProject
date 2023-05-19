<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<div class="header">
            <div class="size">
                <div><a href="/project/index.do"><img class="logo" src="/project/img/logo.png"></a></div>
                <div class="login">
                <c:if test="${empty loginSession}">
                    <a href="/project/member/login.do">로그인</a> |
                    <a href="/project/member/join.do">회원가입</a>
                </c:if>
                <c:if test="${!empty loginSession}">
                    <a href="/project/member/logout.do">로그아웃</a> |
                    <a href="/project/member/mypage.do">마이페이지</a>
                </c:if>
                </div>
            </div>
        </div>
        <div class="menu">
            <ul class="depth1">
                <li>
                    <a href="" >회사소개</a>
                    <ul class="depth2">
                        <li><a href="" >MENU1-1</a></li>
                        <li><a href="" >MENU1-2</a></li>
                        <li><a href="map.html" >오시는길</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" >MENU2</a>
                    <ul class="depth2">
                        <li><a href="" >MENU2-1</a></li>
                        <li><a href="" >MENU2-2</a></li>
                        <li><a href="" >MENU2-3</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" >MENU3</a>
                    <ul class="depth2">
                        <li><a href="" >MENU3-1</a></li>
                        <li><a href="" >MENU3-2</a></li>
                        <li><a href="" >MENU3-3</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" >MENU4</a>
                    <ul class="depth2">
                        <li><a href="" >MENU4-1</a></li>
                        <li><a href="" >MENU4-2</a></li>
                        <li><a href="" >MENU4-3</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/project/board/notice/index.do" >고객센터</a>
                    <ul class="depth2">
                        <li><a href="" >공지사항</a></li>
                        <li><a href="" >QnA</a></li>
                        <li><a href="" >자유게시판</a></li>
                    </ul>
                </li>
            </ul>
        </div>