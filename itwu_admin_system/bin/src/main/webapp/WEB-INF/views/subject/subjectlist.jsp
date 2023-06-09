<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">강의내역</h2>
                <div class="d-flex mb-2">
                    <label for="example" class="col-sm-2_1 col-form-label">구분</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 12%">
	                    <option selected>전체</option>
	                    <option value="1">전공</option>
	                    <option value="2">교양</option>
	                    <option value="3">기타</option>
	                </select>
                    <label for="example" class="col-sm-2_1 col-form-label">종류</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 12%">
	                    <option selected value="1">교과명</option>
	                    <option value="2">강의번호</option>
	                </select>
                    <label for="example" class="col-sm-2_1 col-form-label">입력</label>
                    <input class="form-control bg-transparent" style="width: 25%; margin-right: 1.5rem" type="text" placeholder="검색어">
                    <button type="button" class="btn btn-primary ms-2">검색</button>
                </div>
                <div class="d-flex mb-2">
                    <label for="example" class="col-sm-2_1 col-form-label">학부</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 12%">
	                    <option selected>선택</option>
	                    <option value="1">컴퓨터공학과</option>
	                    <option value="2">경제학과</option>
	                    <option value="2">관광학과</option>
	                    <option value="2">사회학과</option>
	                </select>
                    <label for="example" class="col-sm-2_1 col-form-label">구분</label>
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 12%">
	                    <option selected>전체</option>
	                    <option value="1">전공</option>
	                    <option value="2">교양</option>
	                    <option value="3">기타</option>
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
                </div>
                <div class="table-responsive" style="margin-top: 1rem !important;">
                     <table class="table text-start align-middle table-bordered table-hover mb-0">
                         <thead>
                             <tr class="text-dark">
                                 <th scope="col">강의번호</th>
                                 <th scope="col">년도/학기</th>
                                 <th scope="col">학년</th>
                                 <th scope="col">구분</th>
                                 <th scope="col">강의이름</th>
                                 <th scope="col"></th>
                             </tr>
                         </thead>
                         <tbody>
                             <tr>
                                 <td>G000001</td>
                                 <td>컴퓨터공학</td>
                                 <td>1학년</td>
                                 <td></td>
                                 <td>컴퓨터의 개념 및 실습</td>
                                 <td>
                 					<a class="btn btn-sm btn-success" href="">수정</a>
                 					<a class="btn btn-sm btn-danger" href="">삭제</a>
								 </td>
                             </tr>
                             <tr>
                                 <td>G000002</td>
                                 <td>컴퓨터공학</td>
                                 <td>1학년</td>
                                 <td></td>
                                 <td>이산수학</td>
                                 <td>
                 					<a class="btn btn-sm btn-success" href="">수정</a>
                 					<a class="btn btn-sm btn-danger" href="">삭제</a>
								 </td>
                             </tr>
                             <tr>
                                 <td>G000003</td>
                                 <td>컴퓨터공학</td>
                                 <td>1학년</td>
                                 <td></td>
                                 <td>프로그래밍연습</td>
                                 <td>
                 					<a class="btn btn-sm btn-success" href="">수정</a>
                 					<a class="btn btn-sm btn-danger" href="">삭제</a>
								 </td>
                             </tr>
                             <tr>
                                 <td>G000004</td>
                                 <td>컴퓨터공학</td>
                                 <td>2학년</td>
                                 <td></td>
                                 <td>자료구조</td>
                                 <td>
                 					<a class="btn btn-sm btn-success" href="">수정</a>
                 					<a class="btn btn-sm btn-danger" href="">삭제</a>
								 </td>
                             </tr>
                             <tr>
                                 <td>G000005</td>
                                 <td>컴퓨터공학</td>
                                 <td>2학년</td>
                                 <td></td>
                                 <td>논리설계</td>
                                 <td>
                 					<a class="btn btn-sm btn-success" href="">수정</a>
                 					<a class="btn btn-sm btn-danger" href="">삭제</a>
								 </td>
                             </tr>
                             <tr>
                                 <td>G000006</td>
                                 <td>컴퓨터공학</td>
                                 <td>3학년</td>
                                 <td></td>
                                 <td>프로그래밍의 원리</td>
                                 <td>
                 					<a class="btn btn-sm btn-success" href="">수정</a>
                 					<a class="btn btn-sm btn-danger" href="">삭제</a>
								 </td>
                             </tr>

                         </tbody>
                     </table>
                 </div>
                 <div style="margin-top: 1rem !important;">
                 	<a class="btn btn-sm btn-success" href="">장바구니 담기</a>
                 </div>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>