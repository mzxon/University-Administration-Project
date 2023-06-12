<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">학과 등록</h2>
                <form name="hakgwaIns" id="hakgwaIns" method="post" action="hakgwaIns" enctype="multipart/form-data">
	                <div class="d-flex mb-2">
	                    <label for="example" class="col-sm-2_2 col-form-label" style="width: 12% ">단과대학</label>
		                <select name="dcode" id="dcode" class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 30%">
		                    <option selected>선택</option>
		                    <option value="D01">인문대학(D01)</option>
		                    <option value="D02">사회과학대학(D02)</option>
		                    <option value="D03">자연과학대학(D03)</option>
		                    <option value="D04">간호대학(D04)</option>
		                    <option value="D05">경영대학(D05)</option>
		                    <option value="D06">공과대학(D06)</option>
		                    <option value="D07">농업생명과학대학(D07)</option>
		                    <option value="D08">미술대학(D08)</option>
		                    <option value="D09">사범대학(D09)</option>
		                    <option value="D10">생활과학대학(D10)</option>
		                    <option value="D11">수의과대학(D11)</option>
		                    <option value="D12">약학대학(D12)</option>
		                    <option value="D13">음악대학(D13)</option>
		                    <option value="D14">의과대학(D14)</option>
		                </select>
	                </div>
	                <div class="d-flex mb-2">
	                    <label for="example" class="col-sm-2_2 col-form-label" style="width: 12% ">학부</label>
		                <select name="hcode" id="hcode" class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 30%">
		                    <option selected>선택</option>
		                    <option value="HB001">문학부(HB001)</option>
		                    <option value="HB002">사학부(HB002)</option>
		                    <option value="HB001">컴퓨터공학부(HB001)</option>
		                    <option value="HB002">기계공학부(HB002)</option>
		                </select>
	                </div>
                    <div class="row mb-2">
                        <label for="example" class="col-sm-2_2 col-form-label">학과코드</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="hgcode" name="hgcode" placeholder="예) HG001">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example" class="col-sm-2_2 col-form-label">학과명</label>
                        <div class="col-sm-10">
                        	<input type="text" class="form-control" id="hgname" name="hgname">
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

<%@ include file="../footer.jsp" %>