function popup_view()
{
	var url = "viewPopup.jsp";
	var name = "viewPopup";
	window
			.open(
					url,
					name,
					"width=425, height=690, toolbar=no, status=no, location=no, scrollbar=no, menubar=no, resizable=no,left=50,right=50")
}


function popup_change() {
	
	
	
	
	var url = "changePopup.jsp";
	var name = "changePopup";
	window
			.open(
					"",
					name,
					"width=425, height=690, toolbar=no, status=no, location=no, scrollbar=no, menubar=no, resizable=no,left=50,right=50")
	var frm = document.formm;
	frm.target = name;
	frm.action = "changePopup.jsp";
	frm.submit();
}

function mypopup_change() {
	var url = "mychangePopup.jsp";
	var name = "mychangePopup";
	window
			.open(
					"",
					name,
					"width=425, height=690, toolbar=no, status=no, location=no, scrollbar=no, menubar=no, resizable=no,left=50,right=50")
	var frm = document.formm;
	frm.target = name;
	frm.action = "mychangePopup.jsp";
	frm.submit();
}

function go_SignUp() {
	var url = "SignUp.jsp";
	var name = "SignUp";
	
	window
			.open(
					url,
					name,
					"width=800, height=700, toolbar=no, status=no, location=no, scrollbar=no, menubar=no, resizable=no,left=50,right=50")
}

function popup_add() {
	var url = "addPopup.jsp";
	var name = "addPopup";
	window
			.open(
					url,
					name,
					"width=800, height=700, toolbar=no, status=no, location=no, scrollbar=no, menubar=no, resizable=no,left=50,right=50")
}

function go_CreateStudent() {
	var frm = document.formm;
	frm.action = "./createStudent.jsp";
	frm.submit();
}

function go_delete() {
	var frm = document.formm;
	frm.action = "./deleteStudent.jsp";
	frm.submit();
}

function go_change()
{
	var frm = document.formm;
	frm.action = "./changeStudent.jsp";
	frm.submit();
}

function go_mychange()
{
	var frm = document.formm;
	frm.action = "./mychangeStudent.jsp";
	frm.submit();
}

function go_search()
{
	var frm = document.formm;
	frm.action = "./searchStudent.jsp";
	frm.submit();
}

function go_SignUpProcess() {
	var frm = document.formm;
	
	frm.action = "./SignUpProcess.jsp";
	frm.submit();

	
}

function go_login() {
	var frm = document.formm;
	frm.action = "./loginProcess.jsp";
	
	frm.submit();
}

function go_logout()
{
	var frm = document.formm;
	frm.action = "./logout.jsp";
	frm.submit();
	
}

function go_Close() {
	self.close();
}

function CheckAbledID() {
	var frm = document.formm;
	var radio_btn = frm.identity;

	// 라디오 버튼이 체크되었나 확인하기 위한 변수
	var radio_btn_check = 0;
	for (var i = 0; i < radio_btn.length; i++) {
		// 만약 라디오 버튼이 체크가 되어있다면 true
		if (radio_btn[i].checked == true) {

			if (radio_btn[i].value == "student") {
				frm.name.disabled = false;
				frm.passwd.disabled = false;
				frm.birthdate.disabled = false;
				frm.major.disabled = false;
				frm.grade.disabled = false;
				frm.personal_id.disabled = false;
				frm.phone.disabled = false;
			} else if (radio_btn[i].value == "manager") {
				frm.name.disabled = false;
				frm.passwd.disabled = false;
				frm.birthdate.disabled = true;
				frm.major.disabled = true;
				frm.grade.disabled = true;
				frm.personal_id.disabled = true;
				frm.phone.disabled = false;
			} else {
				frm.name.disabled = true;
				frm.passwd.disabled = true;
				frm.birthdate.disabled = true;
				frm.major.disabled = true;
				frm.grade.disabled = true;
				frm.personal_id.disabled = true;
				frm.phone.disabled = true;
			}

			// 라디오 버튼이 체크되면 radio_btn_check를 1로 만들어준다!!
			radio_btn_check++;
		}
	}
}
