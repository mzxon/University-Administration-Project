<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../common/header.jsp" %>


<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">등록금 관리</h2>
                <div class="d-flex mb-2">
                    <label for="example" class="col-sm-2_1 col-form-label">학부</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 12%">
	                    <option selected>선택</option>
	                    <option value="1">컴퓨터공학과</option>
	                    <option value="2">경제학과</option>
	                    <option value="2">관광학과</option>
	                    <option value="2">사회학과</option>
	                </select>
                    <label for="example" class="col-sm-2_1 col-form-label">학년</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 25%">
	                    <option selected value="1">전체</option>
	                    <option value="2">1학년</option>
	                    <option value="2">2학년</option>
	                    <option value="2">3학년</option>
	                    <option value="2">4학년</option>
	                </select>
                    <button type="button" class="btn btn-primary ms-2">검색</button>
                    <button type="button" class="btn btn-primary ms-2" style="float: right; " onclick="location.href='write'">등록금 추가</button>
                </div>
                <br>
                
<!------------------------------------------------------------------------------------------------------>                
                <div class="table-responsive" style="margin-top: 1rem !important;">
                     <table class="table table-hover">
                         <thead>
                             <tr class="text-dark">
                                 <th scope="col">등록금일련번호</th>
                                 <th scope="col">학과명</th>
                                 <th scope="col">금액</th>
                                 <th scope="col">학기</th>
                                 <th scope="col">학년</th>
                                 <th scope="col">개강</th>
                                 <th scope="col">종강</th>
                                 <th scope="col">납부시작기한</th>
                                 <th scope="col">비고</th>
                             </tr>
                         </thead>
                         <tbody>
                         <c:forEach items="${list}" var="row" varStatus="vs">
                         <tr>
                                 <td>${row.subcode}</td>
                                 <td>${row.code}</td>
                                 <td>${row.hgcode}</td>
                                 <td>${row.subgrade}</td>
                                 <td>${row.subname}</td>
                                 <td>${row.place}</td>
                                 <td>${row.day}</td>
                                 <td>${row.time}</td>
                                 <td><button>강의 계획서</button></td>
                                 <td>
                 					<a class="btn btn-sm btn-success" href="detail/${row.subcode}">수정</a>
                 					<a class="btn btn-sm btn-danger" href="delete/${row.subcode}">삭제</a>
								 </td>
								 
						 </tr>
						 </c:forEach>
                         </tbody>
                     </table>
                 </div>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../common/footer.jsp" %>