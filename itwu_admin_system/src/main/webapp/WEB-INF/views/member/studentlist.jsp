<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../common/header.jsp" %>

<!-- Contents Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-light rounded h-100 p-4">
	            <h2>학생관리</h2>
                <div class="table-responsive">
                	<button type="button" class="btn btn-primary ms-2" style="float: right; margin-bottom: 1.5rem;" onclick="location.href='studentwrite'">학생 추가</button>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">학번</th>
                                <th scope="col">이름</th>
                                <th scope="col">학과</th>
                                <th scope="col">학년</th>
                                <th scope="col">학적상태</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${studentlist}" var="row" varStatus="vs">
                        		<tr>
                        			<td>${row.code}</td>
                        			<td>${row.name}</td>
                        			<td>${row.hgcode}</td>
                        			<td>${row.grade}</td>
                        			<td>${row.academic_status}</td>
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