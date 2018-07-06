<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}
/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: white;
	height: 100%;
}
/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>

<!-- 헤더 페이지 -->
<jsp:include page="/include/header.jsp" />

<body>
	<div class="container-fluid text-center">
		<div class="row content">

			<div class="col-sm-8 text-left">

				<div align="center">
					<h2>상품 등록</h2>
					<hr>
				</div>

				<table class="table table-striped" class="col-sm-6" align="center"
					style="width: 60%">
					<tbody>
						<tr>
							<th class="info">상품명</th>
							<td><input type="text" id="tradename" name="tradename"
								class="form-control" value="2014 [캐논데일] BAD BOY 6"></td>
						</tr>
						<tr>
							<th class="info">제조사</th>
							<td><input type="text" id="maker" name="maker"
								class="form-control" value="Cannodale"></td>
						</tr>
						<tr>
							<th class="info">사진</th>
							<td>
								<form action="" method="post" enctype="multipart/form-data"
									id="js-upload-form">
									<div class="form-inline">

										<span class="btn btn-default fileinput-button"> <i
											class="glyphicon glyphicon-plus"></i> <span>Add files</span>
											<input type="file" name="files[]" multiple>
										</span>
										<button type="reset" class="btn btn-danger cancel">
											<i class="glyphicon glyphicon-ban-circle"></i> <span>Cancel
												upload</span>
										</button>
									</div>
								</form>
							</td>
						</tr>
						<tr>
							<th class="info">가격</th>
							<td><div>
									<input type="text" id="price" name="price" class="form-control"
										value="1,115,000"><span>원</span>
								</div></td>
						</tr>
						<tr>
							<th class="info">설명</th>
							<td><input type="text" id="info" name="info"
								class="form-control" placeholder="상세정보를 입력하세요"></td>
						</tr>

					</tbody>
				</table>

				<br>
				<div align="right" style="margin-right: 250px">
					<button type="button" class="btn btn-default"
						onclick="location.href='/edbike/index.edb'">
						<span class="glyphicon glyphicon-ok"></span> 등록완료
					</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='/edbike/index.edb'">
						<span class="glyphicon glyphicon-remove"></span> 취소
					</button>
				</div>
				<br> <br> <br> <br>
			</div>
</body>
</html>

