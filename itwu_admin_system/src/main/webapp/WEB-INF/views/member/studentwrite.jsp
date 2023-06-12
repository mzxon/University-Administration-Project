<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">학생 등록</h2>
                <form name="studentIns" id="studentIns" method="post" action="studentIns" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="example" class="form-label">이름</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학번</label>
                        <input type="text" class="form-control" id="code" name="code" maxlength="9" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="passwd" name="passwd" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">핸드폰 번호</label>
                        <input type="text" class="form-control" id="phone" name="phone" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">이메일</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학과</label>
                        <input type="text" class="form-control" id="hgcode" name="hgcode" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학년</label>
                        <input type="text" class="form-control" id="grade" name="grade" required>
                    </div>
	                <div class="mb-3">
	                    <label for="example" class="form-label">학적상태</label>
                            <select id="academic_status" name="academic_status" class="form-select mb-3" aria-label="Default select example" required>
		                    <option selected value="">선택</option>
		                    <option value="재학">재학</option>
		                    <option value="휴학">휴학</option>
		                    <option value="자퇴">자퇴</option>
		                    <option value="졸업">졸업</option>
		                </select>
	                </div>                    
	                <div class="mb-3">
                        <label for="example" class="form-label">입학날짜</label>
                        <input type="date" class="form-control" id="admission_date" name="admission_date" required>
                    </div>
                    <button type="submit" class="btn btn-success">회원 등록</button>
                    <button type="reset" class="btn btn-danger">취소</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>