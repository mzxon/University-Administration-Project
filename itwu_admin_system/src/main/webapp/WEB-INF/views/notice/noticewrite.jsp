<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">공지사항 글쓰기</h2>
                <div class="form-floating mb-3">
                    <select class="form-select" id="floatingSelect"
                        aria-label="Floating label select example">
                        <option selected>상세분류</option>
                        <option value="1">학사</option>
                        <option value="2">행정</option>
                        <option value="3">기타</option>
                    </select>
                    <label for="floatingSelect">말머리</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="example" class="form-control" id="floatingInput"
                        placeholder="name@example.com">
                    <label for="floatingInput">제목</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="Leave a comment here"
                        id="floatingTextarea" style="height: 250px;"></textarea>
                    <label for="floatingTextarea">내용</label>
                </div>
                <div class="mb-3">
                    <input class="form-control" type="file" id="formFileMultiple" multiple>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>