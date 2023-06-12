<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">학과목록</h2>
                <h6>학과 갯수 : ${fn:length(hakgwalist)}</h6>
                <div class="d-flex mb-2">
                    <label for="example" class="col-sm-2_2 col-form-label">단과대학</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 30%">
	                    <option selected>선택</option>
	                    <option value="D01">인문대학</option>
	                    <option value="D02">사회과학대학</option>
	                    <option value="D03">자연과학대학</option>
	                    <option value="D04">간호대학</option>
	                    <option value="D05">경영대학</option>
	                    <option value="D06">공과대학</option>
	                    <option value="D07">농업생명과학대학</option>
	                    <option value="D08">미술대학</option>
	                    <option value="D09">사범대학</option>
	                    <option value="D10">생활과학대학</option>
	                    <option value="D11">수의과대학</option>
	                    <option value="D12">약학대학</option>
	                    <option value="D13">음악대학</option>
	                    <option value="D14">의과대학</option>
	                </select>
                    <label for="example" class="col-sm-2_1 col-form-label">학부</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 30%">
	                    <option selected>선택</option>
	                    <option value="HB001">문학부</option>
	                    <option value="HB002">사학부</option>
	                    <option value="HB001">컴퓨터공학부</option>
	                    <option value="HB002">기계공학부</option>
	                </select>
	            </div>
                <div class="d-flex mb-2">
                    <label for="example" class="col-sm-2_2 col-form-label">입력</label>
                    <input class="form-control bg-transparent" style="width: 25%; margin-right: 1.5rem" type="text" placeholder="검색어">
                    <button type="button" class="btn btn-primary ms-2">검색</button>
                </div>
                
				<!-- 테이블 내부 시작 -->
                <div class="table-responsive" style="margin-top: 1rem !important;">
                     <table class="table text-start align-middle table-bordered table-hover mb-0">
                         <thead>
                             <tr class="text-dark">
                                 <th scope="col"><input class="form-check-input" type="checkbox"></th>
                                 <th scope="col">학과코드</th>
                                 <th scope="col">단과대학</th>
                                 <th scope="col">학부명</th>
                                 <th scope="col">학과명</th>
                             </tr>
                         </thead>
                         <tbody>
							<c:forEach items="${hakgwalist}" var="row" varStatus="vs">
	                            <tr>
	                            	<td><input class="form-check-input" type="checkbox"></td>
										<td>${row.hgcode}</td>
										<td>${row.dname}</td>
										<td>${row.hname}</td>
										<td>${row.hgname}</td>
	                            </tr>
							</c:forEach>
                         </tbody>
                     </table>
                 </div>
                 <div style="margin-top: 1rem !important;">
                 	<a class="btn btn-sm btn-success" href="">학과 등록</a>
                 	<a class="btn btn-sm btn-danger" href="">학과 삭제</a>
                 </div>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>