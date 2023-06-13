<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../common/header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">학과 등록</h2>
                <form name="hakgwaIns" id="hakgwaIns" method="post" action="hakgwaIns" enctype="multipart/form-data">
	                <div class="d-flex mb-2">
	                    <label for="example" class="col-sm-2_2 col-form-label" style="width: 12% ">단과대학</label>
		                <select name="dname" id="dname" class="form-select form-select-sm mb-3_1 required" aria-label=".form-select-sm example" style="width: 30%" required>
		                    <option selected value="">선택</option>
		                    <option value="인문대학">인문대학(D01)</option>
		                    <option value="사회과학대학">사회과학대학(D02)</option>
		                    <option value="자연과학대학">자연과학대학(D03)</option>
		                    <option value="공과대학">공과대학(D04)</option>
		                    <option value="미술대학">미술대학(D05)</option>
		                    <option value="사범대학">사범대학(D06)</option>
		                    <option value="의과대학">의과대학(D07)</option>
		                </select>
                        <input type="text" class="form-control" style="width: 20%" id="dcode" name="dcode" placeholder="예) D01" required>
	                </div>
                    <div class="row mb-2">
                        <label for="example" class="col-sm-2_2 col-form-label">학과코드</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="hgcode" name="hgcode" placeholder="예) HG01001001(단과대번호+학부번호+001)" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2_2 col-form-label">학과명</label>
                        <div class="col-sm-10">
                        	<input type="text" class="form-control" id="hgname" name="hgname" required>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">학과 등록</button>
                    <button type="reset" class="btn btn-danger">취소</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../common/footer.jsp" %>