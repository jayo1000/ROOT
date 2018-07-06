<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/asset/css/css1.css">
<link rel="stylesheet" type="text/css" href="/asset/css/css2.css">
<script type="text/javascript" src="../../js/jquery-3.1.1.min.js"></script>
</head>
<body>
	<!-- 헤더 페이지 -->
	<jsp:include page="/include/header.jsp" />
	<div class="container-fluid text-center">
		<div class="row content">
			<!-- 왼쪽 페이지 -->

			<div class="col-sm-6 text-left">
				<div align="center" style="margin-top: 50px; margin-bottom: 20px;">
					<h2>${articleTitleBar }</h2>
				</div>
				<ul>
					<li class="info">총 게시물 수 : ${pagination.totalRowCount }</li>
					<li class="info">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">작성자</th>
									<th scope="col">작성일</th>
									<th scope="col">조회</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="article" items="${list}" varStatus="iter">
								<tr>
									<td>${serialNo - iter.index }</td>
									<td>
										<a href="view.edb?board_id=${article.boardId}&article_id=${article.articleId }">
											${article.subject }
										</a>
                                    </td>
									<td>${article.writer}</td>
									<td>${article.regdate}</td>
									<td style="padding-left: 20px;">${article.hitcount}</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</li>
					<li class="info">
						<!-- 공지사항은 관리자만 작성 가능 -->
						<c:if test="${param.board_id != 1 || cookie.userGrade.value eq 'ADMIN'}">
							<nav style="text-align: right;">
								<button class="btn btn-success"
									onclick="location.href='form.edb?board_id=${param.board_id}'">
									<span class="glyphicon glyphicon-pencil"> 글쓰기</span>
								</button>
							</nav>
						</c:if>
					</li>
					${paginationHTML }
					<li class="info">
						<nav style="text-align: center; margin-bottom: 50px;">
							<form method="get" class="search" name="searchForm">
								<input type="hidden" name="board_id" value="${param.board_id }">
								<select name="searchType" style="width: 80px; height: 30px;">
									<option value="subject">글제목</option>
									<option value="content">글내용</option>
									<option value="writer">작성자</option>
								</select> 
								<input type="text" name="searchValue" placeholder="Search..." style="width: 300px; height: 30px;">
								<button type="submit" class="btn btn-default" style="width: 50px;">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</form>
						</nav>
					</li>
				</ul>
			</div>

			<!-- 오른쪽 화면 -->
		</div>
	</div>

	<!-- footer 부분 -->
	<jsp:include page="/include/footer.jsp" />
</body>
</html>