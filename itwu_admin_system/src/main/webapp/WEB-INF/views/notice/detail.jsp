<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">공지사항 글쓰기</h2>
                <form name="noticefrm" id="noticefrm" method="post" action="insert">
                <div class="form-floating mb-3">
                	<input type="text" name="title" class="form-control" value="${notice.title}">
                    <label for="floatingInput">제목</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="Leave a comment here" name="content" 
                        id="floatingTextarea" style="height: 250px;">${notice.content}</textarea>
                    <label for="floatingTextarea">내용</label>
                </div>
                <button type="submit" class="btn btn-success">수정</button>
                <button type="reset" class="btn btn-danger" onclick="href='notice/list'">취소</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contents End -->

<%@ include file="../footer.jsp" %>