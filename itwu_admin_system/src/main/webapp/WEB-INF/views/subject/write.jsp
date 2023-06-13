<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../common/header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">강의 등록</h2>
<!--------------------------------------------------------------------------------------------------------------------------->
                <form name="subjectfrm" id="subjectfrm" method="post" action="insert" enctype="multipart/form-data">
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">교수번호</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="code" placeholder="아이디를 입력하세요">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의번호</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="subcode">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의이름</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="subname">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">학과</label>
                        <div class="col-sm-10">
							<input type="text" class="form-control" name="hgcode">
							<!-- <select name="subcode" class="form-select" aria-label="Default select example" style="width: 70%">
	                            <option selected></option>
	                            <option value="1">교양</option>
	                            <option value="2">컴퓨터공학과</option>
	                            <option value="3">시각디자인학과</option>
	                        </select> -->
	                     </div>
                    </div>
                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의실</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="place" placeholder="예) 000동 000호">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">학점</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="sub">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">수강인원</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="subcnt">
                        </div>
                    </div>
                    
                    
                    
                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">대상학년</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="subgrade">
							<!-- <select name="subgrade" class="form-select" aria-label="Default select example" style="width: 70%">
	                            <option selected></option>
	                            <option value="1">1학년</option>
	                            <option value="2">2학년</option>
	                            <option value="3">3학년</option>
	                            <option value="4">4학년</option>
	                        </select> -->
	                     </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의학기</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="hakgi">
							<!-- <select name="hakgi" class="form-select" aria-label="Default select example" style="width: 70%">
	                            <option selected></option>
	                            <option value="1">1학기</option>
	                            <option value="2">2학기</option>
	                        </select> -->
	                     </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">요일</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="day">
							<!-- <input type="checkbox" name="day" value="1">월
							<input type="checkbox" name="day" value="2">화
							<input type="checkbox" name="day" value="3">수
							<input type="checkbox" name="day" value="4">목
							<input type="checkbox" name="day" value="5">금
	                      -->
	                    </div>
                    </div>
					<div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의시간</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="time">
							<!-- <input type="checkbox" name="day" value="1">1교시(9:00)
							<input type="checkbox" name="day" value="2">2교시(10:00)
							<input type="checkbox" name="day" value="3">3교시(11:00)
							<input type="checkbox" name="day" value="4">4교시(12:00)
							<input type="checkbox" name="day" value="5">5교시(13:00)
							<input type="checkbox" name="day" value="6">6교시(14:00)
							<input type="checkbox" name="day" value="7">7교시(15:00)
							<input type="checkbox" name="day" value="8">8교시(16:00)
							<input type="checkbox" name="day" value="9">9교시(17:00) -->
	                     </div>
                    </div>

                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">수업일수</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="classdatecnt">
                        </div>
                    </div>
                    
                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의계획서</label>
                        <div class="col-sm-10">
                            <input name="sub_file" class="form-control" type="file" id="formFileMultiple" multiple>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">강의등록</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../common/footer.jsp" %>