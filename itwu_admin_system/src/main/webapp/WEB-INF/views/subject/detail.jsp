<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">강의 수정</h2>
<!--------------------------------------------------------------------------------------------------------------------------->
                <form name="subjectfrm" id="subjectfrm" method="post" action="update" enctype="multipart/form-data">
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">교수번호</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="code" value="${subject.code}">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의번호</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="subcode" value="${subject.subcode}">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의이름</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="subname" value="${subject.subname}">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">학과</label>
                        <div class="col-sm-10">
							<input type="text" class="form-control" name="hgcode" value="${subject.hgcode}">
	                     </div>
                    </div>
                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의실</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="place" value="${subject.place}">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">학점</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="sub" value="${subject.sub}">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">수강인원</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="subcnt" value="${subject.subcnt}">
                        </div>
                    </div>
                    
                    
                    
                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">대상학년</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="subgrade" value="${subject.subgrade}">
	                     </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의학기</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="hakgi" value="${subject.hakgi}">
	                     </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">요일</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control" name="day" value="${subject.day}">
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
                        <input type="text" class="form-control" name="time" value="${subject.time}">
						</div>
                    </div>

                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">수업일수</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="classdatecnt" value="${subject.classdatecnt}">
                        </div>
                    </div>
                    
                    
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2 col-form-label">강의계획서</label>
                        <div class="col-sm-10">
                            <input name="sub_file" class="form-control" type="file" id="formFileMultiple" multiple value="${subject.sub_file}">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">강의수정</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>