<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">공지사항</h2>
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
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">분류</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성자</th>
                                <th scope="col">작성일</th>
                                <th scope="col">조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">3</th>
                                <th scope="row">행정</th>
                                <td>통학버스 변경사항</td>
                                <td>관리자</td>
                                <td>2023-06-08</td>
                                <td>500</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <th scope="row">학사</th>
                                <td>기말고사 과제</td>
                                <td>나교수</td>
                                <td>2023-06-08</td>
                                <td>10</td>
                            </tr>
                            <tr>
                                <th scope="row">1</th>
                                <th scope="row">학사</th>
                                <td>컴퓨터공학과 쫑파티</td>
                                <td>컴공과대</td>
                                <td>2023-06-08</td>
                                <td>200</td>
                            </tr>
                        </tbody>
                    </table>
                	<button type="button" class="btn btn-primary ms-2" style="float: right" onclick="location.href='/notice/write'">글쓰기</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>