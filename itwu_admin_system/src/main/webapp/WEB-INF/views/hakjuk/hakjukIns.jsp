<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">회원 등록</h2>
                <form>
	                <div class="d-flex mb-2">
	                    <label for="example" class="col-sm-2_1 col-form-label">구분</label>
		                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 30%">
		                    <option selected>교수/학생/관리자</option>
		                    <option value="1">교수</option>
		                    <option value="2">학생</option>
		                    <option value="3">관리자</option>
		                </select>
	                </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">이름</label>
                        <input type="text" class="form-control" id="name">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학번</label>
                        <input type="text" class="form-control" id="code">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">핸드폰 번호</label>
                        <input type="text" class="form-control" id="phone">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">이메일</label>
                        <input type="text" class="form-control" id="email">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학과</label>
                        <input type="text" class="form-control" id="hgcode">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학년</label>
                        <input type="text" class="form-control" id="grade">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">재학상태</label>
                        <input type="text" class="form-control" id="academic_status">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">입학날짜</label>
                        <input type="text" class="form-control" id="admission_date">
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