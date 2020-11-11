<%@page import="com.bestpricemarket.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>베프마켓 - 친구같은 경매플랫폼</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/cs/cs_css/bootstrap.min.css" rel="stylesheet">
<!-- 버튼 CSS -->
<link href="${pageContext.request.contextPath}/resources/cs/cs_css/button-reg_goods.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/cs/cs_css/shop-homepage.css" rel="stylesheet">
 <style type="text/css">  
.btn-secondary {
    border-radius: 4px !important;
    background: #212529 !important;
    color: #fff !important;
    padding: 7px 45px !important;
    display: inline-block !important;
    margin-top: 20px !important;
    border: solid 2px #212529 !important; 
    transition: all 0.5s ease-in-out 0s !important;
}
.btn-secondary:hover,
.btn-secondary:focus {
    background: transparent !important;
    color: #212529 !important;
    text-decoration: none !important;
}
}
</style>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../inc/top.jsp" />
	<!-- 헤더 -->

	<!-- Page Content -->
	<div class="container">
		<div class="row">
<!-- 			상품 카테고리 메뉴바 -->
			<div class="col-lg-3">

				<h1 class="my-4">회원 관리</h1>
				<div class="list-group">
<!-- 		          	<a href="/admin/adminPage" class="list-group-item">관리자 페이지</a> -->
		        	<a href="/admin/memberList?num=1" class="list-group-item">회원 목록</a>
		          	<a href="/admin/goodsList?num=1" class="list-group-item">경매 관리</a>
				</div>
			</div>

			<!-- 상품 카테고리 메뉴바 -->
			<div class="col-lg-9">

				<br> <br>
				<h2></h2>
				<h3  style="text-align:center;">전체 회원목록</h3>   
				<br><br>
				
				<button onclick="location.href='/admin/memberList?num=1'" class="btn btn-secondary" style="width:272px; text-align: center;"><b>전체</b> 회원</button>
	          	<button onclick="location.href='/admin/generalMemberList?num=1'" class="btn btn-secondary" style="width:272px; text-align: center;"><b>일반</b> 회원</button>
	          	<button onclick="location.href='/admin/restrictionMemberList?num=1'" class="btn btn-secondary" style="width:272px; text-align: center;"><b>제재된</b> 회원</button>

				<table class="table table-hover">
					<thead>
						<tr>
							<td style="text-align: center;"><b>ID</b></td>
							<td style="text-align: center;">이름</td>
							<td style="text-align: center;"><b>연락처</b></td>
							<td style="text-align: center;">　　</td>
						</tr>
					</thead>

					<c:forEach items="${MemberList}" var="MemberVO">
							<tbody>
								<tr>
								 <td style="text-align: center;">
		                        	<b>${MemberVO.id}</b>
		                        </td>
		                         </td>
								 <td style="text-align: center;">
		                        	${MemberVO.username}
		                        </td>
								 <td style="text-align: center;">
		                        	<b>${MemberVO.phone}</b>
		                        </td>
		                         <td style="text-align: center;">
		                         	<a href="/admin/memberDetail?id=${MemberVO.id}">상세보기</a>
		                         </td>
								</tr>
							</tbody>
					</c:forEach>
				</table>
				<ul class="pagination justify-content-center">

					<c:if test="${prev}">
						<li class="page-item"><a class="page-link"
							href="/admin/memberList?num=${startPageNum - 1}">Previous</a></li>
					</c:if>

					<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">

						<c:if test="${select!=num}">
							<li class="page-item"><a class="page-link"
								href="/admin/memberList?num=${num}">${num}</a></li>
						</c:if>

						<c:if test="${select==num}">
							<a class="page-link" href="/admin/memberList?num=${num}">${num}</a>
						</c:if>

					</c:forEach>

					<c:if test="${next}">
						<li class="page-item"><a class="page-link"
							href="/admin/memberList?num=${endPageNum + 1}">Next</a></li>
					</c:if>
				</ul>

			</div>
			<!-- /.col-lg-9 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<!-- 푸터 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터 -->
	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>