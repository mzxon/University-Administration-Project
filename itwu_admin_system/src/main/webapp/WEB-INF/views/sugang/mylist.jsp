<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../common/header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
                <h2 class="mb-4">수강신청 내역</h2>
                <div class="table-responsive" style="margin-top: 1rem !important;">
                     <table class="table text-start align-middle table-bordered table-hover mb-0">
                         <thead>
                             <tr class="text-dark">
                                 <th scope="col"><input class="form-check-input" type="checkbox"></th>
                                 <th scope="col">강의번호</th>
                                 <th scope="col">학년</th>
                                 <th scope="col">강의이름</th>
                                 <th scope="col">강의실</th>
                                 <th scope="col">강의요일</th>
                                 <th scope="col">강의시간</th>
                                 <th scope="col">학점</th>
                             </tr>
                         </thead>
                         <tbody>
                             <c:forEach items="${list}" var="row" varStatus="vs">               
                             <tr>
                                 <td><!-- 강의번호 --></td>
                                 <td><!-- 학년 --></td>
                                 <td><!-- 강의명 --></td>
                                 <td><!-- 강의실 --></td>
                                 <td><!-- 강의요일 --></td>
                                 <td><!-- 강의시간 --></td>
                                 <td><!-- 학점 --></td>
                             </tr>
                             </c:forEach>
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
<!-- Contents End -->

<%@ include file="../common/footer.jsp" %>