<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">
<title>SignUP</title>
<link rel="stylesheet" href="StyleSheetFolder/StyleSheet.css">
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
	<div class="page-wrapper bg-gra-02 p-t-10 p-b-10 font-poppins">
		<div class="wrapper wrapper--w960">
			<div class="card card-4">
				<div class="card-body">
					<h2 class="title">�л� ���</h2>
					<form name="formm" method="post">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<div class="p-t-10">
										<label class="radio-container m-r-45">�л� <input
											type="radio" name="identity" value="student"
											onClick="CheckAbledID()"> <span class="checkmark"></span>
										</label> <label class="radio-container">������ <input
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
									<label class="label">�̸�</label> <input class="input--style-4"
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
									<label class="label">�������</label>
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
							<label class="label">�а�</label>
							<div class="rs-select2 js-select-simple select--no-search">
								<select name="major" disabled>
									<option value="��ǻ�Ͱ��а�">��ǻ�Ͱ��а�</option>
									<option value="������а�">������а�</option>
									<option value="��������а�">��������а�</option>
									<option value="�ɸ��а�">�ɸ��а�</option>
								</select>
								<div class="select-dropdown"></div>
							</div>
						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">�г�</label> <input class="input--style-4"
										type="number" name="grade" maxlength="12" disabled>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">�ֹε�Ϲ�ȣ</label> <input
										class="input--style-4" type="text" name="personal_id"
										pattern="\d{6}\-\d{7}" title="123456-1234567 �������� �Է����ּ���"
										disabled>
								</div>
							</div>
						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">����ó</label> <input class="input--style-4"
										type="tel" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
										required disabled>
								</div>
							</div>
						</div>

						<div class="p-t-15">
							<button class="btn btn--radius-2 btn--blue" type="button"
								onClick="go_SignUpProcess()">Ȯ��</button>
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

	<script src="ScriptFolder/global.js"></script>
	<script type="text/javascript" src="ScriptFolder/Script1.js"></script>
	
	
</body>
</html>