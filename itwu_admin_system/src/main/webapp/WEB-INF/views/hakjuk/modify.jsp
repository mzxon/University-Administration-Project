<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Form Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">나의 학적정보</h2>
                <form>
                    <div class="mb-3">
                        <label for="example" class="form-label">이름</label>
                        <input type="text" class="form-control" id="example" value="관리자" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학번</label>
                        <input type="text" class="form-control" id="example" value="202318028" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">핸드폰 번호</label>
                        <input type="text" class="form-control" id="example" value="010-1234-1234">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">이메일</label>
                        <input type="text" class="form-control" id="example" value="admin@itwu.co.kr">
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학과</label>
                        <input type="text" class="form-control" id="example" value="컴퓨터공학" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학년</label>
                        <input type="text" class="form-control" id="example" value="4" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학력상태</label>
                        <input type="text" class="form-control" id="example" value="재학중" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">입학날짜</label>
                        <input type="text" class="form-control" id="example" value="2023-03-02" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">생년월일</label>
                        <input type="text" class="form-control" id="example" value="2002-05-28" readonly>
                    </div>
                    <button type="submit" class="btn btn-primary">개인정보 수정</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Form End -->

<%@ include file="../footer.jsp" %>