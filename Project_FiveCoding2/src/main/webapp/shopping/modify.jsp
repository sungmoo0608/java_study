<%@page import="edu.ict.prj.vo.ShoppingMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%
request.setCharacterEncoding("UTF-8");
ArrayList<ShoppingMemberVO> list = new ArrayList<ShoppingMemberVO>();
list = (ArrayList<ShoppingMemberVO>) request.getAttribute("list");

int custno = list.get(0).getCustno();
String custname = list.get(0).getCustname();
String phone = list.get(0).getPhone();
String address = list.get(0).getAddress();
String joindate = list.get(0).getJoindate();
String grade = list.get(0).getGrade();
String city = list.get(0).getCity();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script
	src="${pageContext.request.contextPath}/resource/js/script_shopping.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/style_shopping.css?ver=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css">

<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/style.css"> --%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resource/js/modernizr.js"></script>
</head>

<body>
	<%@ include file="topmenu.jsp"%>
	<section>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center my-5">
					<h2 class="heading-section">쇼핑몰 회원 정보 수정</h2>
				</div>
			</div>
			<form name="frm" action="update">
				<input type="hidden" id="GUBUN" value="update">


				<div class="row justify-content-center">
					<div class="col-md-12 text-center">
						<div class="table-wrap">
							<table class="table table-striped">
								<tr>
									<th>회원번호(자동발생)</th>
									<td><input name="custno" value="<%=custno%>" readonly
										value="1"></td>
								</tr>
								<tr>
									<th>회원성명</th>
									<td><input type="text" name="custname"
										value="<%=custname%>"></td>
								</tr>
								<tr>
									<th>회원전화</th>
									<td><input type="text" name="phone" value="<%=phone%>"></td>
								</tr>
								<tr>
									<th>회원주소</th>
									<td><input type="text" name="address" value="<%=address%>"></td>
								</tr>
								<tr>
									<th>가입일자</th>
									<td><input type="text" name="joindate"
										value="<%=joindate%>"></td>
								</tr>
								<tr>
									<th>고객등급[A:VIP,B:일반,C:직원]</th>
									<td><input type="text" name="grade" value="<%=grade%>"></td>
								</tr>
								<tr>
									<th>도시코드</th>
									<td><input type="text" name="city" value="<%=city%>"></td>
								</tr>
								<tr>
									<td colspan="2">
										<button class="btn btn-warning" type="submit"
											onclick="fn_submit(); return false;">회원 수정</button>
										<button class="btn btn-info" type="button" onclick="location='list'">회원 조회</button>
										<button class="btn btn-dark" type="button"
											onclick="location='home'">회원 관리 홈으로</button>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
	
	
	
</body>
</html>