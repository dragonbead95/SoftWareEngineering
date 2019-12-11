<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<title>SignUp</title>

<!--===============================================================================================-->
<!-- Icons font CSS-->
<link href="StyleSheetFolder/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
<link href="StyleSheetFolder/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
<!--===============================================================================================-->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!--===============================================================================================-->
<link href="StyleSheetFolder/vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="StyleSheetFolder/vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="StyleSheetFolder/signup.css">
<!--===============================================================================================-->
</head>

<body>
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
		<div class="wrapper wrapper--w680">
			<div class="card card-4">
				<div class="card-body">
					<h2 class="title">학생 등록</h2>
					<form name="formm" method="POST">

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<div class="p-t-10">
										<label class="radio-container m-r-45">학생 <input
											type="radio" name="identity" value="student"
											onClick="CheckAbledID()"> <span class="checkmark"></span>
										</label> <label class="radio-container">관리자 <input
											type="radio" name="identity" value="manager"
											onClick="CheckAbledID()"> <span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">이름</label> <input class="input--style-4"
										type="text" name="name" maxlength="12" disabled>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">ID</label> <input class="input--style-4"
										type="text" name="id" maxlength="12" disabled
										pattern="[0-9a-zA-Z]{20}">
								</div>
							</div>
						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">생년월일</label>
									<div class="input-group-icon">
										<input class="input--style-4 js-datepicker" type="text"
											name="birthdate" disabled> <i
											class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">PASSWORD</label> <input
										class="input--style-4" type="password" name="passwd"
										maxlength="12" disabled pattern="[0-9a-zA-Z]{20}">
								</div>
							</div>
						</div>

						<div class="input-group">
							<label class="label">학과</label>
							<div class="rs-select2 js-select-simple select--no-search">
								<select name="major" disabled>
									<option value="컴퓨터공학과">컴퓨터공학과</option>
									<option value="전기공학과">전기공학과</option>
									<option value="언론정보학과">언론정보학과</option>
									<option value="심리학과">심리학과</option>
								</select>
								<div class="select-dropdown"></div>
							</div>
						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">학년</label> <input class="input--style-4"
										type="number" name="grade" maxlength="12" disabled>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">주민등록번호</label> <input
										class="input--style-4" type="text" name="personal_id"
										pattern="\d{6}\-\d{7}" title="123456-1234567 형식으로 입력해주세요"
										disabled>
								</div>
							</div>
						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">연락처</label> <input class="input--style-4"
										type="tel" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
										required disabled>
								</div>
							</div>
						</div>

						<div class="p-t-15">
							<button class="btn btn--radius-2 btn--blue" type="button"
								onClick="go_SignUpProcess()">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="StyleSheetFolder/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="StyleSheetFolder/vendor/select2/select2.min.js"></script>
	<script src="StyleSheetFolder/vendor/datepicker/moment.min.js"></script>
	<script src="StyleSheetFolder/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script type="text/javascript" src="ScriptFolder/Script1.js"></script>
	<script src="ScriptFolder/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>