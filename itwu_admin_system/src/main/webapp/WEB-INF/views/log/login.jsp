<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../common/l_header.jsp" %>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- LogIn Start -->
			<div class="container-fluid">
			    <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
			        <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
			            <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
			                <div class="d-flex align-items-center justify-content-between mb-3">
			                    <a href="/" class="">
			                        <h3 class="text-primary"><i class="fa fa-university me-2"></i>ITWU</h3>
			                    </a>
			                    <h3>로그인</h3>
			                </div>
								<form method="post" action="log/loginproc" onsubmit="return fn_login();" enctype="multipart/form-data">
					                <div class="form-floating mb-3">
					                    <input type="text" class="form-control" id="code" name="code">
					                    <label for="floatingInput">학번</label>
					                </div>
					                <div class="form-floating mb-4">
					                    <input type="password" class="form-control" id="passwd" name="passwd">
					                    <label for="floatingPassword">비밀번호</label>
					                </div>
					                <div class="d-flex align-items-center justify-content-between mb-4">
					                    <div class="form-check">
					                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
					                        <label class="form-check-label" for="exampleCheck1">학번 저장하기</label>
					                    </div>
					                    <a href="">비밀번호 찾기</a>
					                </div>
					                <input type="submit" class="btn btn-primary py-3 w-100 mb-4" value="로그인">
								</form>
			                <p class="text-center mb-0">ITWU 계정이 없나요? <a href="log/signup">회원가입</a></p>
			            </div>
			        </div>
			    </div>
			</div>
        <!-- LogIn End -->
    </div>
	
	<script>
	var msg = "${message}";
	if(msg === "loginError"){
		swal("로그인 실패", "ID나 비밀번호를 확인하세요.","error");
	}
	
	function fn_login() {
		
 		if ($("#code").val() == '') {
			swal("로그인 실패", "ID를 입력하세요.", "warning");
			return false;
		}

		if ($("#passwd").val() == '') {
			swal("로그인 실패", "비밀번호를 입력하세요", "warning");
			return false;
		}
		
		
		$.ajax({
				url : '/login',
				type : 'POST',
				dataType : 'json',
				data : {
					code: '#code',
					passwd: '#passwd'
				},
				async : false,
				success : function (response) {
					location.href = '/notice/list';
				},
				error : function (request, status, error) {
					swal("로그인 실패", "ID나 비밀번호를 확인하세요.","error");
				}
		})
		
		
		
	}
	</script>
	
<%@ include file="../common/l_footer.jsp" %>