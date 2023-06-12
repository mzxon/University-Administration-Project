<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">학과 등록</h2>
                <form>
	                <div class="d-flex mb-2">
	                    <label for="example" class="col-sm-2_2 col-form-label" style="width: 12% ">단과대학</label>
		                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 30%">
		                    <option selected>선택</option>
		                    <option value="0">인문대학</option>
		                    <option value="0">사회과학대학</option>
		                    <option value="0">자연과학대학</option>
		                    <option value="0">간호대학</option>
		                    <option value="0">경영대학</option>
		                    <option value="0">공과대학</option>
		                    <option value="0">농업생명과학대학</option>
		                    <option value="0">미술대학</option>
		                    <option value="0">사범대학</option>
		                    <option value="0">생활과학대학</option>
		                    <option value="0">수의과대학</option>
		                    <option value="0">약학대학</option>
		                    <option value="0">음악대학</option>
		                    <option value="0">의과대학</option>
		                </select>
	                </div>
	                <div class="d-flex mb-2">
	                    <label for="example" class="col-sm-2_2 col-form-label" style="width: 12% ">학부</label>
		                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 30%">
		                    <option selected>선택</option>
		                    <option value="1">교수</option>
		                    <option value="2">학생</option>
		                    <option value="3">관리자</option>
		                </select>
	                </div>
                    <div class="row mb-2">
                        <label for="example" class="col-sm-2_2 col-form-label">학부코드</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail3">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2_2 col-form-label">학부명</label>
                        <div class="col-sm-10">
                        	<input type="text" class="form-control" id="admission_date">
                        </div>
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