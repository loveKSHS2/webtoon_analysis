<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<!--origin-->
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <link href="../../assets/styles.css" rel="stylesheet" />


  <title>Webtoon Dashboard</title>
  <style>
    @import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
    @import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);

    .nanum{font-family: 'Nanum Gothic', sans-serif;}
    .jeju{font-family: 'Jeju Gothic', sans-serif;}

    #chart {
      max-width: 650px;
      margin: 35px auto;
    }
  </style>

  <!-- Custom fonts for this template-->
  <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <!-- <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div> -->
        <div class="sidebar-brand-text mx-3">Dashboard<sup></sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <div class="sidebar-heading">
        General report
      </div>
      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="/index">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>전체 회차 분석</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Heading -->
      <div class="sidebar-heading">
        One Episode Analysis
      </div>

      <li class="nav-item active">
        <a class="nav-link" href="/episode">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>에피소드별 분석</span></a>
      </li>

      <!-- Nav Item - Pages Collapse Menu -->
      <!-- <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>
          </div>
        </div>
      </li> -->

      <!-- Nav Item - 장르 비교 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>장르 비교 분석</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Choose Webtoon Genre:</h6>
            <a class="collapse-item" href="/romance">순정</a>
            <a class="collapse-item" href="#">일상</a>
            <a class="collapse-item" href="#">개그</a>
            <a class="collapse-item" href="#">판타지</a>
            <a class="collapse-item" href="#">액션</a>
            <a class="collapse-item" href="#">드라마</a>
            <a class="collapse-item" href="#">스릴러</a>
            <a class="collapse-item" href="#">감성</a>
            <a class="collapse-item" href="#">시대극</a>
            <a class="collapse-item" href="#">스포츠</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <!-- <div class="sidebar-heading">
        Addons
      </div> -->

      <!-- Nav Item - Pages Collapse Menu -->
      <!-- <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li> -->

      <!-- Nav Item - Charts -->
      <!-- <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li> -->

      <!-- Nav Item - Tables -->
      <!-- <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
      </li> -->

      <!-- Divider -->
      <!-- <hr class="sidebar-divider d-none d-md-block"> -->

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->
    <!-- 사이드바 끝 -->
    
	<!--헤더-->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->


        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
<!--
        <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-90 navbar-search">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800"><br>Dashboard</h1>
          </div>
        </form> -->

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- 전체 검색 -->
          <form action="/otherIndex" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" name="selectedToon" id="selectedToon" class="form-control bg-light border-0 small" placeholder="작품 제목 검색" aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="submit" id="btnSearch">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>
          

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button" >
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>
            
            <!-- Nav Item - Alerts -->

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <!-- <span class="mr-2 d-none d-lg-inline text-gray-900 small">Valerie Luna</span> -->
                <!-- <i class="fas fa-fw fa-table"></i> -->
                <img class="img-profile rounded-circle" src="resources/img/down2.png">
                <span class="mr-2 d-none d-lg-inline text-gray-900">&#32;	&#32;&#32;Other webtoons &#32;&#32;&#32;&#32;</span>
                <!-- <img class="img-profile rounded-circle" src="bubble.png"> -->
              </a>
                <!-- Counter - Alerts -->
                <!-- <span class="badge badge-danger badge-counter">3+</span> -->
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Choose Webtoon
                </h6>
                
                <c:forEach items="${memberList}" var="info">
                <c:if test="${info.episode == 9999}">
                <a class="dropdown-item d-flex align-items-center" href="/otherIndex?selectedToon=${info.title}">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="${info.img}" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate" name="searchedTitle" >${info.title}</div>
                    <!-- <div class="small text-gray-500">Emily Fowler · 58m</div> -->
                  </div>
                </a>
                </c:if>
                </c:forEach>
                
                <a class="dropdown-item text-center small text-gray-700" href="#">Show More Webtoons</a>
              </div>
            </li>

            <!-- <div class="topbar-divider d-none d-sm-block"></div> -->

              <!-- 다른 화 분석 더보기  -->

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="img-profile rounded-circle" src="resources/img/down2.png">
                <!-- <i class="fas fa-fw fa-table"></i> -->
                <span class="mr-2 d-none d-lg-inline text-gray-900">&#32;&#32;&#32;	 Other episodes</span>
                <!-- <img class="img-profile rounded-circle" src="bubble.png"> -->
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h5 class="dropdown-header">
                  Choose Episode
                </h5>
                <c:forEach items="${memberList}" var="info">
                <c:if test="${info.title == '8월의 눈보라' && info.episode != 9999}">
                <a class="dropdown-item d-flex align-items-center" href="/otherEpisode?selectedToon=${info.title}&episode=${info.episode}">
                  <div class="mr-3">
                    <!-- <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div> -->
                  </div>
                  <div>
                    <!-- 날짜 데이터 필요한 부분 -->
                    <div class="small text-gray-500">${info.upload}</div>
                    <!-- 제목 + 회차 데이터 필요한 부분-->
                    <span class="font-weight-bold">${info.title} ${info.episode}화</span>
                  </div>
                </a>
                </c:if>
                </c:forEach>
                <a class="dropdown-item text-center small text-gray-700" href="#">Show More Episodes</a>
              </div>
            </li>

            <!-- <div class="topbar-divider d-none d-sm-block"></div> -->

            <!-- Nav Item - User Information -->
            <!-- <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a> -->
              <!-- Dropdown - User Information -->
              <!-- <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li> -->

          </ul>

        </nav>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-1 text-gray-800">Choose Webtoon </h1>
        <p class="mb-4">분석 결과를 확인하고 싶은 웹툰을 선택하세요.<a href="https://getbootstrap.com/docs"></p>

        <!-- Content Row -->
        <div class="row">

          <!-- First Column -->
          <div class="col-lg-1.5">

            <!-- Custom Text Color Utilities -->
            <div class="card mb-4">
              <a href="#mondaycard" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="mondaycard">
                <h6 class="m-0 font-weight-bold text-primary">MONDAY</h6>
              </a>
              <div class="collapse show" id="mondaycard">
              <div class="card-body">
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/183559/thumbnail/thumbnail_IMAG10_5e13c29c-f451-4430-a84a-a46495fb8cc3.jpg" width="90" height="90" align="center"> <br>&nbsp;&nbsp;&nbsp;&nbsp;신의 탑</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/648419/thumbnail/thumbnail_IMAG10_1421195d-13be-4cde-bcf9-0c78d51c5ea3.jpg" width="90" height="90"> <br>뷰티풀 군바리</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/602910/thumbnail/thumbnail_IMAG10_8914c548-d69d-45d6-8008-bbc129e637c2.jpg" width="90" height="90"> <br>윈드브레이커</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/654774/thumbnail/thumbnail_IMAG10_b85f5350-ca68-4300-ab15-036d9ee060c8.jpg" width="90" height="90" > <br>&nbsp;소녀의 세계</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/597478/thumbnail/thumbnail_IMAG10_e4cf12ad-ee5b-441f-b237-8c15e488f6ed.jpg" width="90" height="90" > <br>&nbsp;&nbsp;평범한 8반</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/694946/thumbnail/thumbnail_IMAG10_c5e84842-ae12-4497-899a-c7289b4ede49.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;귀전구담</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/729946/thumbnail/thumbnail_IMAG10_70d8ffd9-e470-45d5-ac40-4102cfa8e40f.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;악취</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/713975/thumbnail/thumbnail_IMAG10_2c34bc9e-747c-4257-bf48-a67a560dca0a.jpg" width="90" height="90"> <br>&nbsp;&nbsp;데드라이프</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/702422/thumbnail/thumbnail_IMAG10_8a7d3a98-291e-4fec-b399-7b8219c90854.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;니편내편</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/675554/thumbnail/thumbnail_IMAG10_66613407-1041-4f4f-ad8a-1983361f932e.jpg" width="90" height="90" > <br>가우스전자 시즌3~4</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/730174/thumbnail/thumbnail_IMAG10_cf893d78-7e16-4a4a-95c0-02101c7b3eef.jpg" width="90" height="90" > <br>&nbsp;칼가는 소녀</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/723714/thumbnail/thumbnail_IMAG10_d7d9c81f-d07b-449d-898a-54136a8a67af.jpg" width="90" height="90" > <br>용비불패 완전판</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/720121/thumbnail/thumbnail_IMAG10_705a7deb-0073-4861-83fc-533a5bf39f4c.jpg" width="90" height="90" > <br>치즈인더트랩 (재)</p>
                <p class="text-gray-600 p-3 font-xs m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/729039/thumbnail/thumbnail_IMAG10_8f73530f-a8ef-4975-8978-e8cde0e55ecf.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;레이드</p>


              </div>
            </div>
          </div>

          </div>

          <!-- Second Column -->
          <div class="col-lg-1.5">

            <!-- Background Gradient Utilities -->
            <div class="card mb-4">
              <a href="#tuesdaycard" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="tuesdaycard">
                <h6 class="m-0 font-weight-bold text-primary">TUESDAY</h6>
              </a>
              <div class="collapse show" id="tuesdaycard">
              <div class="card-body">
                <p class="text-gray-800 p-3 font-s m-0" > <a href="/otherIndex?selectedToon=여신강림" style="text-decoration:none"><img src="https://shared-comic.pstatic.net/thumb/webtoon/703846/thumbnail/thumbnail_IMAG10_35503130-16ce-4236-b913-0fe76226de36.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;여신강림</p></a>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/20853/thumbnail/thumbnail_IMAG10_545c2365-1d18-4cd3-afd9-27b161a4c664.jpg" width="90" height="90"> <br>&nbsp;마음의 소리</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/702608/thumbnail/thumbnail_IMAG10_85425026-fd1c-4a8a-8d58-e257bbf892c0.jpg"> <br>랜덤채팅의 그녀!</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/119874/thumbnail/title_thumbnail_20150706185233_t83x90.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;덴마</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/642653/thumbnail/thumbnail_IMAG10_7a019732-5db6-4c88-85fb-a65e69748797.jpg" width="90" height="90" > <br>사이드킥 2~3</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/698918/thumbnail/thumbnail_IMAG10_1ffbcabb-b5fd-41d8-9500-faaee1d3cbb4.jpg" width="90" height="90" > <br>원주민 공포만화</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/703307/thumbnail/thumbnail_IMAG10_0c6ab332-3b2b-4d18-bc97-b512c038087a.jpg" width="90" height="90" > <br>&nbsp;&nbsp;신암행어사</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/730656/thumbnail/thumbnail_IMAG10_b324ec4f-f869-4b55-b2fb-63306bef3a41.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;사신소년</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/703852/thumbnail/thumbnail_IMAG10_be0db503-bd1a-4a2a-8cb3-6601ec3e929e.jpg" width="90" height="90" > <br>바른연애 길잡이</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/602287/thumbnail/thumbnail_IMAG10_224813aa-66df-4442-8647-1b44d645964b.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;신의 언어</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/675554/thumbnail/thumbnail_IMAG10_66613407-1041-4f4f-ad8a-1983361f932e.jpg" width="90" height="90" > <br>가우스전자 시즌3~4</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/695321/thumbnail/thumbnail_IMAG10_ed636544-e826-4b9b-96f2-fce37c9f8e54.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;빙탕후루</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/731019/thumbnail/thumbnail_IMAG10_8d244a54-e464-4e86-b1e5-6fe4c6874d6b.jpg" width="90" height="90" > <br>그날 죽은 나는</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/616239/thumbnail/title_thumbnail_20161031214436_t83x90.jpg" width="90" height="90" > <br>&nbsp;&nbsp;윌유메리미</p>

              </div>
            </div>
          </div>


          </div>

          <!-- Third Column -->
          <div class="col-lg-1.5">

            <!-- Background Gradient Utilities -->
            <div class="card mb-4">
              <a href="#wednesdaycard" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="wednesdaycard">
                <h6 class="m-0 font-weight-bold text-primary">WEDNESDAY</h6>
              </a>
              <div class="collapse show" id="wednesdaycard">
              <div class="card-body">
                <p class="text-gray-800 p-3 font-s m-0"> <a href="/otherIndex?selectedToon=유미의 세포들" style="text-decoration:none"><img src="https://shared-comic.pstatic.net/thumb/webtoon/651673/thumbnail/thumbnail_IMAG10_659b9446-0940-494a-bb5f-5893290a84d0.jpg" width="90" height="90"> <br>유미의 세포들</p></a>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/626907/thumbnail/title_thumbnail_20150407141027_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;복학왕</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/667573/thumbnail/title_thumbnail_20151120112903_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;연놈</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/729255/thumbnail/thumbnail_IMAG10_655c05f9-ec65-408e-9810-4174553e030e.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;개장수</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/670143/thumbnail/thumbnail_IMAG10_20190617_migrated.jpg" width="90" height="90" > <br>헬퍼 2 : 킬베로스</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/710747/thumbnail/thumbnail_IMAG10_b1079a8d-2d5e-49df-8f30-05b3e215170b.jpg" width="90" height="90" > <br>세상은 돈과 권력</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/703307/thumbnail/thumbnail_IMAG10_0c6ab332-3b2b-4d18-bc97-b512c038087a.jpg" width="90" height="90" > <br>&nbsp;&nbsp;신암행어사</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/725829/thumbnail/thumbnail_IMAG10_6b97d6e4-0a56-4067-97c1-59a9e1e36e47.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;아도나이</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/728126/thumbnail/thumbnail_IMAG10_0ee45437-dc90-4fe4-8305-dc962f74b861.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;고삼무쌍</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/710760/thumbnail/thumbnail_IMAG10_0f9651ee-18f9-4fbb-bdf7-cded844fcb6d.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;이츠마인</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/675554/thumbnail/thumbnail_IMAG10_66613407-1041-4f4f-ad8a-1983361f932e.jpg" width="90" height="90" > <br>가우스전자 시즌3~4</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/703308/thumbnail/thumbnail_IMAG10_033f2738-af42-4697-a652-509c819f2373.jpg" width="90" height="90" > <br>&nbsp;&nbsp;&nbsp;신석기녀</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/603159/thumbnail/thumbnail_IMAG10_9c8174b9-022f-466f-acd5-1274aecee71c.jpg" width="90" height="90" > <br>레사 시즌2~3</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/723714/thumbnail/thumbnail_IMAG10_d7d9c81f-d07b-449d-898a-54136a8a67af.jpg" width="90" height="90" > <br>용비불패 완전판</p>

              </div>
            </div>
          </div>


          </div>

          <!-- 4 Column -->
          <div class="col-lg-1.5">

            <!-- Background Gradient Utilities -->
            <div class="card mb-4">
              <a href="#thursdaycard" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="thursdaycard">
                <h6 class="m-0 font-weight-bold text-primary">THURSDAY</h6>
              </a>
              <div class="collapse show" id="thursdaycard">

              <div class="card-body">
                <p class="text-gray-800 p-3 font-s m-0"> <a href="/otherIndex?selectedToon=연애혁명" style="text-decoration:none"><img src="https://shared-comic.pstatic.net/thumb/webtoon/570503/thumbnail/thumbnail_IMAG10_5719a3fe-81f4-4a0c-8c27-eca1631e8384.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;연애혁명</p></a>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/557672/thumbnail/title_thumbnail_20130508182053_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;기기괴괴</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/715772/thumbnail/thumbnail_IMAG10_45108665-e46e-49f7-9ee5-ded04dbbc6d0.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;좀비딸</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/570506/thumbnail/title_thumbnail_20130710192300_t83x90.jpg" width="90" height="90"> <br>최강전설 강해효</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/731130/thumbnail/thumbnail_IMAG10_95bffd81-d7ca-48f7-8e17-3da2c97ae7db.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;이두나!</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/637931/thumbnail/thumbnail_IMAG10_f3fcdcff-76fe-43d8-ba90-1e38b5306879.jpg" width="90" height="90"> <br>전자오락수호대</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/710761/thumbnail/thumbnail_IMAG10_9f8253a1-2318-4c0d-8d9e-f044f2203d4c.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;하드캐리</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/699415/thumbnail/thumbnail_IMAG10_64dbd565-a463-4cb8-b4bb-131bd082cc44.jpg" width="90" height="90"> <br>간 떨어지는 동거</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/720128/thumbnail/thumbnail_IMAG10_2a8555a0-027a-4186-a7f6-e84fd253ebca.jpg" width="90" height="90"> <br>금요일 베스트</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/131385/thumbnail/thumbnail_IMAG10_c5053bcc-3b95-473d-bfe1-e4256bf56b58.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;쿠베라</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/675554/thumbnail/thumbnail_IMAG10_66613407-1041-4f4f-ad8a-1983361f932e.jpg" width="90" height="90"> <br>가우스전자 시즌3~4</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/727798/thumbnail/thumbnail_IMAG10_49220347-365e-4b67-a511-502298e4d4f0.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;겟백</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/699659/thumbnail/thumbnail_IMAG10_e12f7293-375d-4612-87e7-1b1db2dc9fb0.jpg" width="90" height="90"> <br>좋아하는 부분</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/670144/thumbnail/title_thumbnail_20151230192753_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;가담항설</p>
              </div>
            </div>
          </div>


          </div>

          <!-- 5 Column -->
          <div class="col-lg-1.5">

            <!-- Background Gradient Utilities -->
            <div class="card mb-4">
              <a href="#fridaycard" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="fridaycard">
                <h6 class="m-0 font-weight-bold text-primary">FRIDAY</h6>
              </a>
              <div class="collapse show" id="fridaycard">
              <div class="card-body">
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/641253/thumbnail/title_thumbnail_20141120112141_t83x90.jpg" width="90" height="90"> <br>외모지상주의</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/318995/thumbnail/title_thumbnail_20110407182655_t83x90.jpg" width="90" height="90"> <br>갓 오브 하이스쿨</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/701081/thumbnail/thumbnail_IMAG10_7120be5e-b5c7-4727-aba5-cb500c6098ab.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;스위트룸</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/727189/thumbnail/thumbnail_IMAG10_f0245c6f-64d4-4b41-8d46-8ec6cae03175.jpg" width="90" height="90"> <br>이제 곧 죽습니다</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/119874/thumbnail/title_thumbnail_20150706185233_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;덴마</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/552960/thumbnail/title_thumbnail_20130905153649_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;더 게이머</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/670149/thumbnail/thumbnail_IMAG10_e7b9a026-42a9-447c-a5b5-af0c71626e50.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;테러맨</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/725586/thumbnail/thumbnail_IMAG10_909e55be-2b16-4097-994d-8cf139d01124.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1초</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/712362/thumbnail/thumbnail_IMAG10_568fc3ff-2c5f-40f9-a8d0-34c3e59fa0a5.jpg" width="90" height="90"> <br>&nbsp;개를 낳았다</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/675554/thumbnail/thumbnail_IMAG10_66613407-1041-4f4f-ad8a-1983361f932e.jpg" width="90" height="90"> <br>가우스전자 시즌3~4</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/729044/thumbnail/thumbnail_IMAG10_a0539b2a-580e-4eb9-b0da-855141b1a6d2.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;난약</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/723714/thumbnail/thumbnail_IMAG10_d7d9c81f-d07b-449d-898a-54136a8a67af.jpg" width="90" height="90"> <br>용비불패 완전판</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/710754/thumbnail/thumbnail_IMAG10_d8e56fd3-303a-47f8-bdb0-8557ddceb5ba.jpg" width="90" height="90"> <br>화장 지워주는 남자</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/723790/thumbnail/thumbnail_IMAG10_258b4afa-a7fd-4f7e-92c8-b10ac0b1d21b.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;금붕어</p>
              </div>
            </div>
          </div>


          </div>
          <!-- 6 Column -->
          <div class="col-lg-1.5">

            <!-- Background Gradient Utilities -->
            <div class="card mb-4">
              <a href="#saturdaycard" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="saturdaycard">
                <h6 class="m-0 font-weight-bold text-primary">SATURDAY</h6>
              </a>
              <div class="collapse show" id="saturdaycard">
              <div class="card-body">
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/568986/thumbnail/thumbnail_IMAG10_3ddaaf4b-2d45-45a1-a7bc-0631a8a7b561.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;용이산다</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/650305/thumbnail/title_thumbnail_20161209212128_t83x90.jpg" width="90" height="90"> <br>&nbsp;호랑이형님</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/597447/thumbnail/title_thumbnail_20131102162055_t83x90.jpg" width="90" height="90"> <br>&nbsp;프리드로우</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/651673/thumbnail/thumbnail_IMAG10_659b9446-0940-494a-bb5f-5893290a84d0.jpg" width="90" height="90"> <br>유미의 세포들</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/670139/thumbnail/thumbnail_IMAG10_02b0b120-28d2-42fc-b367-447c1d172540.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;부활남</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/703843/thumbnail/thumbnail_IMAG10_c587a99e-c3e7-49a4-985a-88c8d950017f.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;비질란테</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/727188/thumbnail/thumbnail_IMAG10_f01cc201-02c6-4a40-8c1a-e3db0c256876.jpg" width="90" height="90"> <br>취사병 전설이 되다</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/720190/thumbnail/thumbnail_IMAG10_cb6bddb2-2fb9-4814-b49b-56391e290f9f.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;머니게임</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/721948/thumbnail/thumbnail_IMAG10_72bdf971-8699-4e5e-aea9-e22569ad9437.jpg" width="90" height="90"> <br>&nbsp;&nbsp;스터디그룹</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/730694/thumbnail/thumbnail_IMAG10_dae8671c-5899-4e4d-a921-299ad188fb14.jpg" width="90" height="90"> <br>&nbsp;초인의 시대</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/64997/thumbnail/title_thumbnail_20110515001535_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;나이트런</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/724274/thumbnail/thumbnail_IMAG10_9171129f-7851-4d26-ac8d-c8e179bcc81b.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;먹이</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/730204/thumbnail/thumbnail_IMAG10_5a2771ad-bd0a-438f-8a3d-e193e7c6bbfb.jpg" width="90" height="90"> <br>&nbsp;친애하는 X</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/703630/thumbnail/thumbnail_IMAG10_f0337ccf-b55e-47d9-bb47-131b396f1bb6.jpg" width="90" height="90"> <br>&nbsp;&nbsp;어글리후드</p>

              </div>
            </div>
          </div>


          </div>

          <!-- 7 Column -->
          <div class="col-lg-1.5">

            <!-- Background Gradient Utilities -->
            <div class="card mb-4">
              <a href="#sundaycard" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="sundaycard">
                <h6 class="m-0 font-weight-bold text-primary">SUNDAY</h6>
              </a>
              <div class="collapse show" id="sundaycard">
              <div class="card-body">
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/670152/thumbnail/title_thumbnail_20160122210643_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;열렙전사</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/729326/thumbnail/thumbnail_IMAG10_dd46c585-5abf-4ee3-a29d-805976672d58.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;맘마미안</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/119874/thumbnail/title_thumbnail_20150706185233_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;덴마</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/724854/thumbnail/thumbnail_IMAG10_828301ec-6d0c-4b1b-83d5-8c12b13575de.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;돼지우리</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/655746/thumbnail/thumbnail_IMAG10_261e36e7-8e8f-4640-bcf8-31232c5279b4.jpg" width="90" height="90"> <br>마법스크롤 상인 지오</p>
                <p class="text-gray-800 p-3 font-s m-0"> <a href="/otherIndex?selectedToon=8월의 눈보라" style="text-decoration:none"><img src="https://shared-comic.pstatic.net/thumb/webtoon/703856/thumbnail/thumbnail_IMAG10_e1eb5e9c-69e8-4cce-8e20-13981c235503.jpg" width="90" height="90"><br>8월의 눈보라</p></a>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/703307/thumbnail/thumbnail_IMAG10_0c6ab332-3b2b-4d18-bc97-b512c038087a.jpg" width="90" height="90"> <br>&nbsp;신암행어사</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/710751/thumbnail/thumbnail_IMAG10_eed99ea4-5908-4445-b89a-d3881797f909.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;약한영웅</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/718021/thumbnail/thumbnail_IMAG10_c04904ff-e7e9-4ac6-9323-93e7cafb0139.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;검은인간</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/729037/thumbnail/thumbnail_IMAG10_c4b8c3e7-1dc6-4f95-9458-47a5dcdafda7.jpg" width="90" height="90"> <br>&nbsp;호러전파상</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/690503/thumbnail/title_thumbnail_20170106153614_t83x90.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;도망자</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/626939/thumbnail/thumbnail_IMAG10_821c4cf8-e1a4-47ec-be73-ee6163307441.jpg" width="90" height="90"> <br>&nbsp;&nbsp;&nbsp;둥굴레차!</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/730259/thumbnail/thumbnail_IMAG10_ba8c687c-1848-4515-9926-3ec275a2737f.jpg" width="90" height="90"> <br>스퍼맨: 현자단의 역습</p>
                <p class="text-gray-800 p-3 font-s m-0"> <img src="https://shared-comic.pstatic.net/thumb/webtoon/720117/thumbnail/thumbnail_IMAG10_5c1c9870-957b-4cce-ba63-48dde3407104.jpg" width="90" height="90"> <br>킬러분식 (재)</p>
              </div>
            </div>
          </div>


          </div>
        </div>

      </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="resources/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="resources/js/demo/chart-area-demo.js"></script>
  <script src="resources/js/demo/chart-pie-demo.js"></script>


  <!-- HeatmapChart -->
  <script crossorigin src="https://unpkg.com/react@16/umd/react.production.min.js"></script>
  <script crossorigin src="https://unpkg.com/react-dom@16/umd/react-dom.production.min.js"></script>
  <script src="https://unpkg.com/prop-types@15.6.2/prop-types.min.js">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.34/browser.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/apexcharts@latest"></script>
  <script src="https://unpkg.com/react-apexcharts@1.1.0/dist/react-apexcharts.iife.min.js"></script>

  <script type="text/babel">

    function generateData(count, yrange) {
      var i = 0;
      var series = [];
      while (i < count) {
        var x = 'w' + (i + 1).toString();
        var y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

        series.push({
          x: x,
          y: y
        });
        i++;
      }
      return series;
    }
    </script>


</body>

</html>
