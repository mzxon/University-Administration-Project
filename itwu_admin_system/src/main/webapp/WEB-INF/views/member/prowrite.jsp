<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../common/header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">교수 등록</h2>
                <form name="proIns" id="proIns" method="post" action="proIns" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="example" class="form-label">이름</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">일련번호</label>
                        <input type="text" class="form-control" id="code" name="code" maxlength="9" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="passwd" name="passwd" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">핸드폰 번호</label>
                        <input type="text" class="form-control" id="phone" name="phone" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">이메일</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="example" class="form-label">학과</label>
                        <input type="text" class="form-control" id="hgcode" name="hgcode" maxlength="15" required>
                    </div>
                    <button type="submit" class="btn btn-success">회원 등록</button>
                    <button type="reset" class="btn btn-danger">취소</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../common/footer.jsp" %>