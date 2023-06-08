<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Recent Sales Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">수강신청 내역</h2>
                <div class="d-flex mb-2">
	                <select class="form-select form-select-sm mb-3_1" aria-label=".form-select-sm example" style="width: 15%">
	                    <option selected>선택</option>
	                    <option value="1">분류</option>
	                    <option value="2">제목</option>
	                    <option value="3">작성자</option>
	                </select>
                    <input class="form-control bg-transparent" style="width: 30%" type="text" placeholder="검색어">
                    <button type="button" class="btn btn-primary ms-2">검색</button>
                </div>
                <div class="table-responsive" style="margin-top: 1rem !important;">
                     <table class="table text-start align-middle table-bordered table-hover mb-0">
                         <thead>
                             <tr class="text-dark">
                                 <th scope="col"><input class="form-check-input" type="checkbox"></th>
                                 <th scope="col">강의번호</th>
                                 <th scope="col">학과</th>
                                 <th scope="col">학년</th>
                                 <th scope="col">구분</th>
                                 <th scope="col">강의이름</th>
                                 <th scope="col">강의실</th>
                                 <th scope="col">강의시간</th>
                                 <th scope="col">학점</th>
                             </tr>
                         </thead>
                         <tbody>
                             <tr>
                                 <td><input class="form-check-input" type="checkbox"></td>
                                 <td>G000001</td>
                                 <td>컴퓨터공학</td>
                                 <td>1학년</td>
                                 <td></td>
                                 <td>컴퓨터의 개념 및 실습</td>
                                 <td>38동 302호</td>
                                 <td></td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td><input class="form-check-input" type="checkbox"></td>
                                 <td>G000002</td>
                                 <td>컴퓨터공학</td>
                                 <td>1학년</td>
                                 <td></td>
                                 <td>이산수학</td>
                                 <td>38동 501호</td>
                                 <td></td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td><input class="form-check-input" type="checkbox"></td>
                                 <td>G000003</td>
                                 <td>컴퓨터공학</td>
                                 <td>1학년</td>
                                 <td></td>
                                 <td>프로그래밍연습</td>
                                 <td>38동 102호</td>
                                 <td></td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td><input class="form-check-input" type="checkbox"></td>
                                 <td>G000004</td>
                                 <td>컴퓨터공학</td>
                                 <td>2학년</td>
                                 <td></td>
                                 <td>자료구조</td>
                                 <td>33동 204호</td>
                                 <td></td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td><input class="form-check-input" type="checkbox"></td>
                                 <td>G000005</td>
                                 <td>컴퓨터공학</td>
                                 <td>2학년</td>
                                 <td></td>
                                 <td>논리설계</td>
                                 <td>34동 404호</td>
                                 <td></td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td><input class="form-check-input" type="checkbox"></td>
                                 <td>G000006</td>
                                 <td>컴퓨터공학</td>
                                 <td>3학년</td>
                                 <td></td>
                                 <td>프로그래밍의 원리</td>
                                 <td>34동 404호</td>
                                 <td></td>
                                 <td>3</td>
                             </tr>

                         </tbody>
                     </table>
                 </div>
                 <div style="margin-top: 1rem !important;">
                 	<a class="btn btn-sm btn-danger" href="">선택삭제</a>
                 </div>
            </div>
        </div>
    </div>
</div>
<!-- Recent Sales End -->

<%@ include file="../footer.jsp" %>