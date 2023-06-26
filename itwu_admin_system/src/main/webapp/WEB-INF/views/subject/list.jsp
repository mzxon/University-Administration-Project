<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="../header.jsp" %>


<!-- Contents Start -->
<div class="card mb-4">
<div class="card-header">
    <div class="d-flex justify-content-between">
    	<div>
    		<h3>강의 목록</h3>
    		<div class="small text-medium-emphasis">2023</div>
    	</div>
    </div>
    <div class="row">
   		<div class="col-4">
           <div class="input-group mb-3">
		  <label class="input-group-text" for="inputGroupSelect01">종류</label>
		  <select class="form-select" id="inputGroupSelect01">
		    <option selected>선택</option>
		    <option value="1">교과명</option>
		    <option value="2">교수명</option>
		    <option value="3">강의명</option>
		  </select>
		</div>     
		</div> 
		<div class="col-4">
           <div class="input-group mb-3">
		  <label class="input-group-text" for="inputGroupSelect01">학부</label>
		  <select class="form-select" id="inputGroupSelect01">
		    <option selected>선택</option>
		    <option value="1">컴퓨터공학과</option>
		    <option value="2">경제학과</option>
		    <option value="3">관광학과</option>
		    <option value="4">사회학과</option>
		  </select>
		</div>      
		</div> 
		<div class="col-4">
           <div class="input-group mb-3">
		  <label class="input-group-text" for="inputGroupSelect01">학년</label>
		  <select class="form-select" id="inputGroupSelect01">
		    <option selected>전체</option>
		    <option value="1">1학년</option>
		    <option value="2">2학년</option>
		    <option value="3">3학년</option>
		    <option value="3">4학년</option>
		  </select>
		</div>      
		</div> 
	</div>
</div>       
<!------------------------------------------------------------------------------------------------------>                
<div class="card-body">
<div class="row">
<div class="table-responsive"> 
	<table class="table border mb-0">
		<thead class="table-light fw-semibold">
			<tr class="align-middle">
				<th>강의번호</th> 	
				<th class="text-center">강의명</th> 
				<th class="text-center">학년</th> 
				<th class="text-center">요일</th> 
				<th class="text-center">시간</th> 
				<th class="text-center">강의실</th> 
				<th class="text-right">강의계획서</th> 
				<th class="text-right">비고</th> 
			</tr> 
		</thead>
		<tbody>
		<c:forEach items="${list}" var="row" varStatus="vs">
			<tr class="align-middle">
				<td>${row.subcode}</td>
				<td class="text-center">
				<div>${row.subname}</div>
				<div class="small text-medium-emphasis">
					<span>${row.code}<!--교수명으로--></span> | ${row.hgcode}
				</div>
				</td>
                <td>${row.subgrade}</td>
                <td>${row.day}</td>
                <td>${row.time}</td>
                <td>${row.place}</td>
                <td><button>강의 계획서</button></td>
                <td>
                <div class="dropdown">
                     <button class="btn btn-transparent p-0 show" type="button" data-coreui-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       <svg class="icon">
                         <use xlink:href="vendors/@coreui/icons/svg/free.svg#cil-options"></use>
                       </svg>
                     </button>
                     <div class="dropdown-menu dropdown-menu-end show" style="position: absolute; inset: 0px 0px auto auto; margin: 0px; transform: translate(0px, 30px);" data-popper-placement="bottom-end">
                      <a class="dropdown-item" href="detail/${row.subcode}">수정</a>
                      <a class="dropdown-item" href="delete/${row.subcode}">삭제</a>
                      <a class="dropdown-item text-danger" href="#">Delete</a>
                  	 </div>
                </div>
				</td>
			</tr>
		</c:forEach>
		</tbody>
</table>
</div>
</div>
</div>
</div>
<!-- Contents End -->
<%@ include file="../footer.jsp" %>