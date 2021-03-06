<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="UTF-8">
<title>공간, 문의내역</title>
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap"
   rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<style type="text/css">
body {
   background-color: #FAFAFA;
}

section {
   text-align: center;
   margin-top: 1%;
}

#categoryName {
   margin-top: 3%;
}

.aTag {
   text-decoration: none;
   color: black;
}

table {
   text-align: center;
   margin: auto;
   width: 80%;
   border-spacing: 10px;
   border-collapse: collapse;
}

.table_th {
   text-align: center;
   width: 300px;
   padding-top: 1%;
   padding-bottom: 1%;
   font-size: 17px;
   font-weight: bold;
   color: rgb(41, 41, 41);
}

.table_td {
   width: 300px;
   padding-top: 1%;
   padding-bottom: 1%;
   font-size: 15px;
   color: rgb(41, 41, 41);
}

hr {
   width: 80%;
}

thead {
   border-bottom: 0.2px solid;
   border-color: #dbdbdb;
}

.page-num {
   margin-top: 15px;
}

.page-num oi {
   width: 36px;
   height: 35px;
}

.num {
   position: relative;
   height: 33px !important;
   margin-left: 5px;
   margin-right: 5px;
   border: none;
}

.num>span {
   font-weight: bold;
   position: relative;
   top: 2px;
}

footer {
   color: black;
   margin-top: 15%;
   font-size: 12px;
}

h2 {
   text-align: center;
   margin-top: 1%;
   display: block;
   font-size: 25px;
   font-weight: bold;
   color: rgb(41, 41, 41);
   word-break: keep-all;
}

.row2 {
   text-align: center;
   width: 100%;
   margin-left: 12%;
}

.mainLogo {
   font-family: 'Gugi', cursive;
   color: #111;
   font-size: 55px;
}

#myPageDiv {
   border-top: 1px solid #ebebeb;
   text-align: center;
}

.layout-navigation-bar-login__item {
   position: relative;
   display: inline-block;
   padding: 2px;
   margin: 2%;
   color: #757575;
   font-size: 12px;
   font-weight: 700;
   line-height: 20px;
   text-decoration: none;
   color: #757575;
}

.css_input_userInfo {
   text-align: left;
   width: 80%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 20px 20px 20px 20px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}
#searchButton {
   color: #757575;
}
#search{
   text-align: left;
   width: 80%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 20px 20px 20px 20px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}.mainLogo {
   font-family: 'Gugi', cursive;
   color: #111;
   font-size: 55px;
   text-decoration: none;
}
section div {
   width: 80%;
   height: auto;
   text-align: center;
   margin-left: 10%;
   border: 1px dashed #dbdbdb;
   border-radius: 30px/30px;
}

a:link {
   color: black;
   text-decoration: none;
}

a:visited {
   color: black;
   text-decoration: none;
}

a:hover {
   /* color: skyblue; */
   color: #00C892;
   text-decoration: none;
}
footer {
   width: auto;
   height: auto;
   background: rgb(226, 226, 226);
}
</style>
</head>
<body>
   <!-- Header Section Begin -->
   <header class="header-section">
      <div class="hs-top">
         <div class="container">
            <div class="row">
               <div class="col-lg-2">
                  <div class="logo">
                     <a href="index"><span class="mainLogo">공간</span></a>
                  </div>
               </div>
               <div class="col-lg-10">
                  <div class="ht-widget">
                     <c:if test="${session_flag != 'success' }">
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                        <a href="login" class="layout-navigation-bar-login__item">로그인</a>
                        <span>&nbsp;|&nbsp;</span>
                        <!-- 로그인 -->
                        <!-- 로그인시 로그아웃 -->
                        <a href="user_Join" class="layout-navigation-bar-login__item">회원가입</a>
                        <!-- 회원가입 -->
                        <!-- 로그인시 마이페이지 -->
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                     </c:if>
                     <c:if test="${session_flag == 'success' }">
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                        <a href="loginOut" class="layout-navigation-bar-login__item">로그아웃</a>
                        <span>&nbsp;|&nbsp;</span>
                        <!-- 로그인 -->
                        <!-- 로그인시 로그아웃 -->
                        <a href="myPage?nickname=${session_nickName }" class="layout-navigation-bar-login__item">마이페이지</a>
                        <!-- 회원가입 -->
                        <!-- 로그인시 마이페이지 -->
                        <!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
                     </c:if>
                  </div>
               </div>
            </div>
            <div class="canvas-open">
               <span class="icon_menu"></span>
            </div>
         </div>
      </div>
      <div class="hs-nav">
         <div class="container">
            <div class="row">
               <div class="col-lg-9">
                  <nav class="nav-menu">
                     <ul>
                        <li class="active"><a href="index">홈</a></li>
                        <!-- 홈 -->
                        <li><a href="store1">스토어</a></li>
                        <!-- 스토어 -->
                        <li><a href="companyMain">시공업체</a></li>
                        <!-- 시공업체 -->
                        <!-- <li><a href="interiorInquiries">시공문의</a></li> -->
                        <!-- 시공업체상세페이지 -->
                        <li><a href="communityMain">커뮤니티</a></li>
                        <!-- 커뮤니티 -->
                        <li><a href="event">이벤트</a></li>
                        <!-- 이벤트 -->
                        <c:if test="${session_right == 'Manager' }">
                           <li><a href="adminPage">관리자페이지</a></li>
                        </c:if>
                     </ul>
                  </nav>
               </div>
               <div class="col-lg-3">
                  <div class="hn-social">
                     <!-- 검색기능 -->
                     <form action="">
                        <input class="css_input_userInfo" type="text" id="search"
                           name="search" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;search">
                        <!-- 검색 -->
                        <input class="fas fa-search fa-lg" id="searchButton" type="button" id="" onclick=""
                           value="검색">
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- 마이페이지 네비게이션 -->
      <div id="myPageDiv" class="hs-nav">
         <div class="container">
            <div class="row">
               <div class="col-lg-9">
                  <nav class="nav-menu">
                     <ul>
                        <!-- 마이페이지 -->
                        <li class="active"><a href="myPage?nickname=${session_nickName }">마이페이지</a></li>
                        <!-- 홈 -->
                        <li><a href="userInfoModify?s_id=${s_ID }">회원정보수정</a></li>
                        <!-- 구매내역 -->
                        <li><a href="buyDetails?s_id=${s_ID }">구매내역</a></li>
                        <!-- 장바구니 -->
                        <li><a href="cart?s_id=${s_ID }">장바구니</a></li>
                        <!-- 시공문의내역 -->
                        <li><a href="myInquiries?s_id=${s_ID }">문의내역</a></li>
                        <!-- 판매자등록 -->
                        <li><a href="companyRegistration">시공업체등록</a></li>
                        <!-- 문의하기 -->
                        <li><a href="serviceCenter">고객센터</a></li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </div>
      <!-- 마이페이지 네비게이션 끝 -->
   </header>
   <!-- Header End -->
   <!-- section begin -->
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript">
      function conListAll(user_Nickname){
         $.ajax({
            url : "/conList",
            type : "post",
            data : {
               'user_Nickname':user_Nickname
            },
            success : function(data) {
               var html = "";
               for(i in data){
               html += ' <tr> ';
               html += ' <td class="table_td">'+data[i].reply_Check+'<!-- 번호 --></td> ';
               html += ' <td class="table_td"><c:if test="'+(data[i].reply_Check)+'==1">▶</c:if><a href="InquiriesCompany?cd_id='+data[i].cd_Id+'"><mark>'+data[i].cd_Title+'</mark></a><!-- 제목 --></td> ';              
               html += ' <td class="table_td">'+data[i].user_Nickname+'<!-- 작성자 --></td> ';
               html += ' <td class="table_td">'+data[i].cd_Bdate+'<!-- 작성일 --></td> ';
               html += ' </tr> ';                  
               }
               $("#AllConIq").html(html);
            },
            error : function() {
               alert("error");
            }
         });
      }
   </script>
   <h2>시공문의내역</h2>
   <section>
   <div>
      <table>
         <thead>
            <tr>
               <th class="table_th">답변현황</th>
               <th class="table_th">제목</th>
               <th class="table_th">작성자</th>
               <th class="table_th">작성일</th>
            </tr>
         </thead>
         <tbody id="AllConIq">
            <!-- for문############################################## -->
            <c:forEach items="${Ilist }" var="cIVo" end="3" >
               <tr>
                  <td class="table_td">${cIVo.reply_Check} <!-- 번호 --></td>
                  <td class="table_td"><c:if test="${cIVo.cd_Bstep == 1}">▶</c:if><a href="InquiriesCompany?cd_id=${cIVo.cd_Id}"><mark>${cIVo.cd_Title}</mark></a><!-- 제목 --></td>
                  <%-- <td class="table_td"><mark>${cIVo.cd_Title} </mark><!-- 제목 --></td> --%>
                  <td class="table_td">${cIVo.user_Nickname} <!-- 작성자 --></td>
                  <td class="table_td">${cIVo.cd_Bdate} <!-- 작성일 --></td>
               </tr>
            </c:forEach>
         </tbody>
         <!-- for문############################################## -->
      </table>
   </div>
   <a href="javascript:void(0);" onclick="conListAll('${session_nickName}'); "><span>더보기</span></a>
   </section>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript">
      function userListAll(user_Nickname){
         $.ajax({
            url : "/userList",
            type : "post",
            data : {
               'user_Nickname':user_Nickname
            },
            success : function(data) {
               var html = "";
               for(i in data){
               html += ' <tr> ';
               html += ' <td class="table_td">'+data[i].reply_Check+'<!-- 번호 --></td> ';
               html += ' <td class="table_td"><c:if test="'+(data[i].reply_Check)+'==1">▶</c:if><a href="InquiriesUser?ud_id='+data[i].ud_Id+'"><mark>'+data[i].ud_Title+'</mark></a><!-- 제목 --></td> ';
               html += ' <td class="table_td">'+data[i].user_Nickname+'<!-- 작성자 --></td> ';
               html += ' <td class="table_td">'+data[i].ud_Bdate+'<!-- 작성일 --></td> ';
               html += ' </tr> ';                  
               }
               $("#AllUserIq").html(html);
            },
            error : function() {
               alert("error");
            }
         });
      }
   </script>
   <h2>일반문의내역</h2>
   <section>
   <div>
      <table>
         <thead>
            <tr>
               <th class="table_th">답변현황</th>
               <th class="table_th">제목</th>
               <th class="table_th">작성자</th>
               <th class="table_th">작성일</th>
            </tr>
         </thead>
         <tbody id="AllUserIq">
            <!-- for문############################################## -->
            <c:forEach items="${Ulist }" var="uIVo" end="3" >
               <tr>
                  <td class="table_td">${uIVo.reply_Check} <!-- 번호 --></td>
                  <td class="table_td"><c:if test="${uIVo.ud_Bstep == 1}">▶</c:if><a href="InquiriesUser?ud_id=${uIVo.ud_Id}"><mark>${uIVo.ud_Title} </mark></a>
                     <!-- 제목 --></td>
                  <td class="table_td">${uIVo.user_Nickname} <!-- 작성자 --></td>
                  <td class="table_td">${uIVo.ud_Bdate} <!-- 작성일 --></td>
               </tr>
            </c:forEach>
            
         </tbody>
         <!-- for문############################################## -->
      </table>
   </div>
      <a href="javascript:void(0);" onclick="userListAll('${session_nickName}'); "><span>더보기</span></a>
   </section>
         <!-- top -->
      <a
         style="display: scroll; position: fixed; bottom: 10px; right: 20px; cursor: pointer;"
         href="#" title="top"> <i class="fas fa-arrow-circle-up"
         style="width: 2em; height: 2em;"></i></a>
      <!-- top -->
         <!-- Footer Section Begin -->
      <footer>
         <pre
            style="color: rgb(107, 107, 107); font-size: 0.7em; text-align: left;">
      
         <span style="font-weight: 700; font-size: 6em;">1670-0876</span><a
               href=""><i class="fab fa-apple"
               style="margin-left: 35%; width: 4em; height: 4em;"></i></a><a href=""><i
               class="fab fa-google-play"
               style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a href=""><i
               class="fab fa-facebook"
               style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a href=""><i
               class="fab fa-instagram"
               style="margin-left: 2%; width: 4em; height: 4em;"></i></a>
         <span style="font-size: 2em;">평일 09:00 ~ 18:00 (주말 & 공휴일 제외)</span>
         
         <span>브랜드 스토리회사소개채용정보이용약관개인정보처리방침공지사항고객센터고객의 소리전문가 등록사업자 구매회원제휴/광고 문의입점신청 문의</span>
         
         <span>상호명(주)버킷플레이스이메일(고객문의) space@bucketplace.net (제휴문의) contact@bucketplace.net</span>
         <span>대표이사:홍길동 사업자등록번호:119-86-91245 통신판매업신고번호:제2018-서울서초-0580호 주소:서울 서초구 서초대로74길 4 삼성생명서초타워 25, 27층</span>
         <span>공간은 개별 판매자가 상품을 판매하는 오픈마켓이며 (주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 일체 책임을 지지 않습니다.</span>
         
         <span>Copyright 2021. bucketplace, Co., Ltd. All rights reserved [ developer : TeamSpace ]</span>
         
      </pre>
      </footer>
   <!-- Footer Section End -->
</body>
</html>