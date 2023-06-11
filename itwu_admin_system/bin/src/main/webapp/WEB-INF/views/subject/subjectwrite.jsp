<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">강의 등록</h2>
                <form>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의번호</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="example">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의학기</label>
                        <div class="col-sm-10">
							<select class="form-select" aria-label="Default select example" style="width: 70%">
	                            <option selected></option>
	                            <option value="1">1학기</option>
	                            <option value="2">2학기</option>
	                        </select>
	                     </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의이름</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="example">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">학과</label>
                        <div class="col-sm-10">
							<select class="form-select" aria-label="Default select example" style="width: 70%">
	                            <option selected></option>
	                            <option value="1">교양</option>
	                            <option value="2">컴퓨터공학과</option>
	                            <option value="3">시각디자인학과</option>
	                        </select>
	                     </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">대상학년</label>
                        <div class="col-sm-10">
							<select class="form-select" aria-label="Default select example" style="width: 70%">
	                            <option selected></option>
	                            <option value="1">1학년</option>
	                            <option value="2">2학년</option>
	                            <option value="3">3학년</option>
	                            <option value="4">4학년</option>
	                        </select>
	                     </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의실</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="example" placeholder="예) 000동 000호">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의시간</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="example" placeholder="예) 수 1,2,3">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">학점</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="example">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">수강인원</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="example">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의계획서</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="file" id="formFileMultiple" multiple>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">강의등록</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>