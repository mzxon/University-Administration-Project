<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>ITWU 학사관리시스템</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
    
    <!-- SweetAlert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="/" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-university me-2"></i>ITWU</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="ms-3">
                        <h6 class="mb-0">${res.name}</h6>
                        <span>${res.code}</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="/notice/list" class="nav-item nav-link" style="font-weight: 900;"><i class="far fa-file-alt me-2"></i>공지사항</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="font-weight: 900;"><i class="fa fa-table me-2"></i>수강신청</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="/sugang/list" class="dropdown-item">수강신청</a>
                            <a href="/sugang/cartlist" class="dropdown-item">장바구니</a>
                            <a href="/sugang/mylist" class="dropdown-item">수강신청 내역</a>
                            <a href="/sugang/mylist" class="dropdown-item">장바구니 신청 내역</a>
                            <a href="/sugang/timetable" class="dropdown-item">시간표 조회</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="font-weight: 900;"><i class="fa fa-user me-2"></i>학적정보</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="/member/studentmodify" class="dropdown-item">나의 학적정보</a>
                            <a href="/hakjuk/pw_modify" class="dropdown-item">비밀번호 수정</a>
                            <a href="" class="dropdown-item">등록금고지서 조회</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="font-weight: 900;"><i class="fa fa-chalkboard-teacher me-2"></i>강의관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="/subject/write" class="dropdown-item">강의등록</a>
                            <a href="/subject/list" class="dropdown-item">강의관리</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="font-weight: 900;"><i class="fa fa-pen me-2"></i>성적관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="" class="dropdown-item">성적등록</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="font-weight: 900;"><i class="fa fa-school me-2"></i>학적관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="/hakgwa/hakgwalist" class="dropdown-item">학과 관리</a>
                            <a href="/tuition/list" class="dropdown-item">등록금 관리</a>
                            <a href="/member/studentlist" class="dropdown-item">학생 관리</a>
                            <a href="/member/prolist" class="dropdown-item">교수 관리</a>
                        </div>
                    </div>
                    <a href="" class="nav-item nav-link" style="font-weight: 900;"><i class="fa fa-user me-2"></i>마이페이지</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="/" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-university"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <span class="d-none d-lg-inline-flex">${res.name}</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="/hakjuk/pw_modify" class="dropdown-item">비밀번호 변경</a>
                            <a href="/log/logout" class="dropdown-item">로그아웃</a>
                            <a href="/" class="dropdown-item">로그인</a>
                            <a href="/log/signup" class="dropdown-item">회원가입</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->