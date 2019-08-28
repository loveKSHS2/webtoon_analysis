<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>

  <meta charset="utf-8">
 


  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

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
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
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
        <a class="nav-link" href="index.html">
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
        <a class="nav-link" href="episode.html">
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
            <a class="collapse-item" href="romance.html">순정</a>
            <a class="collapse-item" href="charts.html">일상</a>
            <a class="collapse-item" href="charts.html">개그</a>
            <a class="collapse-item" href="charts.html">판타지</a>
            <a class="collapse-item" href="charts.html">액션</a>
            <a class="collapse-item" href="charts.html">드라마</a>
            <a class="collapse-item" href="charts.html">스릴러</a>
            <a class="collapse-item" href="charts.html">감성</a>
            <a class="collapse-item" href="charts.html">시대극</a>
            <a class="collapse-item" href="charts.html">스포츠</a>
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

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

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
                      <button class="btn btn-primary" type="button">
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
                <c:if test="${info.episode == 1}">
                <a class="dropdown-item d-flex align-items-center" href="/otherEpisode?selectedToon=${info.title}&episode=${info.episode}">
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
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-2 text-gray-800">Charts</h1>
          <p class="mb-4">Chart.js is a third party plugin that is used to generate the charts in this theme. The charts below have been customized - for further customization options, please visit the <a target="_blank" href="https://www.chartjs.org/docs/latest/">official Chart.js documentation</a>.</p> -->

          <!-- Content Row -->
          <div class="row">

            <!-- 작품 -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="nanum text-s font-weight-bold text-primary text-uppercase mb-1">작품</div>
                      <!-- <div class="nanum h5 mb-0 font-weight-bold text-gray-800">8월의 눈보라</div> -->
                      <c:forEach items="${memberList}" var="info">
                      <c:if test="${info.episode == 9999 && info.title == '8월의 눈보라'}">
                      <h5 class="jeju text-gray-800">${info.title}
                      <img src="https://shared-comic.pstatic.net/thumb/webtoon/703856/thumbnail/thumbnail_IMAG06_70dd4e8a-b48a-4f09-a575-ad280f178ee7.jpg" width="125" height="101" align="right">
                      </h5>
                      </c:if>
                      </c:forEach>
                      <!-- <br> -->
                    </div>
                    <!-- <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>

            <!-- 작가 -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="nanum text-s font-weight-bold text-success text-uppercase mb-1">작가</div>
                      <c:forEach items="${memberList}" var="info">
                      <c:if test="${info.episode == 9999 && info.title == '8월의 눈보라'}">
                      <h5 class="jeju text-gray-800">${info.writer}</h5><br>
                      </c:if>
                      </c:forEach>
                      <!-- <div class="nanum h5 mb-0 font-weight-bold text-gray-800">김리아</div> -->
                    </div>
                    <!-- <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>

            <!--장르-->
            <div class="col-xl-3 col-md-8 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="jeju text-s font-weight-bold text-info text-uppercase mb-1">장르</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <c:forEach items="${memberList}" var="info">
                        <c:if test="${info.episode == 9999 && info.title == '8월의 눈보라'}">
                          <h6 class="jeju text-gray-800">${info.genre}</h5>
                          <!-- <div class="nanum h6 mb-0 mr-3 font-weight-bold text-gray-800">로맨스, 스토리, 일상, 드라마, </div> -->
                          <div class="jeju text-xs mb-0 mr-3 text-gray-800">${info.age_limit}</div>
                          </c:if>
                          </c:forEach>
                          </div>
                        <!-- <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div> -->
                      </div>
                    </div>
                    <!-- <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>

            <!-- 회차정보 -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="nanum text-s font-weight-bold text-warning text-uppercase mb-1">회차 정보</div>
                      <c:forEach items="${memberList}" var="info">
                      <c:if test="${info.episode == 1 && info.title == '8월의 눈보라'}">
                      <h6 class="jeju text-gray-800">${info.upload}</h6>
                      <div class="jeju mb-0 mr-3 text-gray-800">${info.title} ${info.episode}화</div>
                      </c:if>
                      </c:forEach>
                      <!-- <div class="nanum h5 mb-0 font-weight-bold text-gray-800">김리아</div> -->
                    </div>
                    <!-- <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>

          </div>

          <div class= "row">
            <!-- 댓글요약 -->
            <div class="col-xl-6 col-lg-5 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <h6 class="nanum text-l font-weight-bold text-primary text-uppercase mb-1">댓글 요약 결과<br><br></h6>
                      <div class="nanum text-m font-weight-bold mb-1">3줄 요약</div>
                      <c:forEach items="${summaryList}" var="summary">
                      	<c:if test="${summary.episode == 1 && summary.title == '8월의 눈보라'}">
                        <div class="jeju mb-0 mr-3 text-gray-800">
                        1. ${summary.summary1}</br></br>
                        2. ${summary.summary2}</br></br>
                        3. ${summary.summary3}</br></div>
                        </c:if>
                        </c:forEach>
                      <hr>
                      <div class="nanum text-m font-weight-bold mb-1">요약 키워드</div>
                      <c:forEach items="${summaryKeywordList}" var="summarykeyword">
                      	<c:if test="${summarykeyword.episode == 1 && summarykeyword.title == '8월의 눈보라'}">
                        <div class="jeju mb-0 mr-3 text-gray-800">
                        ${summarykeyword.summary_keyword1}&nbsp;&nbsp;
                        ${summarykeyword.summary_keyword2}&nbsp;&nbsp;
                        ${summarykeyword.summary_keyword3}&nbsp;&nbsp;  
                        ${summarykeyword.summary_keyword4}&nbsp;&nbsp; 
                        ${summarykeyword.summary_keyword5}&nbsp;&nbsp; 
                        ${summarykeyword.summary_keyword6}&nbsp;&nbsp;
                        ${summarykeyword.summary_keyword7}&nbsp;&nbsp;  
                        ${summarykeyword.summary_keyword8}&nbsp;&nbsp;  
                        ${summarykeyword.summary_keyword9}&nbsp;&nbsp; 
                        ${summarykeyword.summary_keyword10}&nbsp;&nbsp;
                        </div>
                        </c:if>
                        </c:forEach>
                      <!-- <div class="nanum h5 mb-0 font-weight-bold text-gray-800">김리아</div> -->
                    </div>
                    <!-- <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div> -->
                  </div>
                </div>
              </div>


            </div>

            <!-- 감성분석 -->
            <div class="col-xl-5 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">감성 분석 결과</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <hr>
                  선택한 회차의 감성 분석 결과를 확인하세요.
                </div>
              </div>

              </div>

            </div>

          <!-- </div> -->



          <div class= "row">


            <!-- 작품키워드 -->
            <div class="col-xl-6 col-md-6 col-lg-5">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">작품 키워드</h6>
                </div>
                <div class="card-body">
                  <div class="chart-bar2">
                    <canvas id="piecebarchart"></canvas>
                  </div>
                  <hr>
                  여기에다가 작품 키워드 차트 넣기
                </div>
              </div>

              </div>
              

              <!-- 작가키워드 -->

            <div class="col-xl-6 col-lg-5">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">작가  키워드</h6>
                </div>
                <div class="card-body">
                  <div class="chart-bar3">
                    <canvas id="writerbarchart"></canvas>
                  </div>
                  <hr>
                  여기에다가 작가  키워드 차트 넣기
                </div>
              </div>
            </div>

          </div>

            <div class= "row">


              <!-- 별점 변화율 -->
              <div class="col-xl-4 col-lg-5 col-md-6 col-lg-5">
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">별점 변화율</h6>
                  </div>
                  <div class="card-body">
                    <div class="chart-line">
                      <canvas id="myLineChart"></canvas>
                    </div>
                    <hr>
                    별점 변화율을 확인하세요.
                  </div>
                </div>

                </div>

                <!-- 작품키워드 -->


                <!-- 댓글수 -->
              <div class="col-xl-4 col-lg-5">
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">댓글 수 추이 그래프</h6>
                  </div>
                  <div class="card-body">
                    <div class="chart-area">
                      <canvas id="myAreaChart"></canvas>
                    </div>
                    <hr>
                    총 댓글수 변화율을 확인하세요.
                  </div>
                </div>
              </div>

              <!-- 트윗량 -->
              <div class="col-xl-4 col-lg-5">
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">트위터 언급량 그래프</h6>
                  </div>
                  <div class="card-body">
                    <div class="chart-bar">
                      <canvas id="myBarChart"></canvas>
                    </div>
                    <hr>
                    업로드 이후 일주일간의 SNS언급량을 확인하세요.
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
      <!-- <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer> -->
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
  <script src="resources/vendor/chart.js/Chart.bundle.js"></script>
  <script src="resources/vendor/chart.js/Chart.js"></script>

  <!-- Page level custom scripts -->
<!--   <script src="resources/js/demo/chart-area-demo.js"></script> -->
  <!-- <script src="resources/js/demo/chart-pie-demo.js"></script> -->
<!--   <script src="resources/js/demo/chart-bar-demo.js"></script> -->
  <script src="resources/js/demo/chart-line-demo.js"></script> 
  <script src="resources/js/demo/kyewordbarchart.js"></script>
  <script src="resources/js/demo/writerbarchart.js"></script>
 <!--  <script src="resources/js/demo/piecebarchart.js"></script> -->
  
  
  
  <!-- 감성분석 그래프  -->
  <script>

//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nanum Gothic','Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

//Pie Chart Example
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
 type: 'doughnut',
 data: {
   labels: ["Positive", "Negative"],
   datasets: [{
     data: [1601, 2463],
     backgroundColor: ['#4e73df', 'rgba(255, 99, 132, 0.6)'],
     hoverBackgroundColor: ['#2e59d9', 'rgba(255, 99, 132, 1)'],
     hoverBorderColor: "rgba(234, 236, 244, 1)",
   }],
 },
 options: {
   maintainAspectRatio: false, 
   tooltips: {
     backgroundColor: "rgb(255,255,255)",
     bodyFontColor: "#858796",
     borderColor: '#dddfeb',
     borderWidth: 1,
     xPadding: 15,
     yPadding: 15,
     displayColors: false,
     caretPadding: 10,
   },
   legend: {
     display: false
   },
   cutoutPercentage: 80,
 },
});

  </script>

<!-- 댓글 수 추이 그래프 -->
<script>
//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';


// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["1화", "2화", "3화", "4화", "5화"],
    datasets: [{
      label: '댓글 수 추이',
      fill : false, // area 유무
      lineTension: 0.1,
      backgroundColor: "rgb(255,255,255)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3, 
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2, 
      data: [4774, 2239, 1666, 2635, 1734],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks

        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,

    }
  }
});

</script>


<!-- 작품 키워드 -->

<script>

Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';

Chart.defaults.global.defaultFontColor = '#858796';


var contents = document.getElementById("piecebarchart");

var piecebarchart = new Chart(contents, {

  type: 'bar',

  data: {

    labels: [
    <c:forEach items="${keywordList}" var="keyword">
    <c:if test="${keyword.title == '8월의 눈보라' && keyword.episode == 1 && keyword.sep == '작품'}">
    "${keyword.word}",
	</c:if>
    </c:forEach>
    ],

    datasets: [{
      
      label: "라벨",

      backgroundColor: "#4e73df",

      hoverBackgroundColor: "#2e59d9",

      borderColor: "#4e73df",

      data: [
      <c:forEach items="${keywordList}" var="keyword">
      <c:if test="${keyword.title == '8월의 눈보라' && keyword.episode == 1 && keyword.sep == '작품'}">
      ${keyword.frequency},
  	  </c:if> 
      </c:forEach> 
      ],
    
      

    }],

  },

  options: {

    maintainAspectRatio: false,

    layout: {

      padding: {

        left: 10,

        right: 25,

        top: 25,

        bottom: 0

      }

    },

    scales: {

      xAxes: [{

        time: {

          unit: 'month'

        },

        gridLines: {

          display: false,

          drawBorder: false

        },

        ticks: {

          maxTicksLimit: 6

        },

        maxBarThickness: 25,

      }],

      yAxes: [{

        gridLines: {

          color: "rgb(234, 236, 244)",

          zeroLineColor: "rgb(234, 236, 244)",

          drawBorder: false,

          // borderDash: [2],

          // zeroLineBorderDash: [2]

        }

      }],

    },

    legend: {

      display: false

    },

    tooltips: {

      titleMarginBottom: 10,

      titleFontColor: '#6e707e',

      titleFontSize: 14,

      backgroundColor: "rgb(255,255,255)",

      bodyFontColor: "#858796",

      borderColor: '#dddfeb',

      borderWidth: 1,

      xPadding: 15,

      yPadding: 15,

      displayColors: false,

      caretPadding: 10,

      }

    },

});
</script>

<!-- 트위터 언급량 -->
<script>
//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';


// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myBarChart = new Chart(ctx, {
  type: 'bar',
  data: {
    // 날짜 정보 넣기
    labels: ["1화","2화","3화","4화","5화"],
    datasets: [{
      label: "트위터 언급량",
      backgroundColor: "#4e73df",
      hoverBackgroundColor: "#2e59d9",
      borderColor: "#4e73df",
      data: [4, 3, 1, 5, 2, 0],
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 6
        },
        maxBarThickness: 25,
      }],
      yAxes: [{
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          // borderDash: [2],
          // zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
      }
    },
});

</script>

<!--  작가키워드 -->
<script >
//Set new default font family and font color to mimic Bootstrap's default styling

Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';

Chart.defaults.global.defaultFontColor = '#858796';





// Bar Chart Example

var contents = document.getElementById("writerbarchart");

var writerbarchart = new Chart(contents, {

  type: 'bar',

  data: {

    // 날짜 정보 넣기

    labels: ["스토리", "그림", "생각","진짜","작품","사람","연재","댓글","축하","내용"],

    datasets: [{

      label: "작품 키워드",

      backgroundColor: "#4e73df",

      hoverBackgroundColor: "#2e59d9",

      borderColor: "#4e73df",

      data: [2594, 512, 452, 438, 311, 263, 255, 254, 250, 247],

    }],

  },

  options: {

    maintainAspectRatio: false,

    layout: {

      padding: {

        left: 10,

        right: 25,

        top: 25,

        bottom: 0

      }

    },

    scales: {

      xAxes: [{

        time: {

          unit: 'month'

        },

        gridLines: {

          display: false,

          drawBorder: false

        },

        ticks: {

          maxTicksLimit: 6

        },

        maxBarThickness: 25,

      }],

      yAxes: [{

        gridLines: {

          color: "rgb(234, 236, 244)",

          zeroLineColor: "rgb(234, 236, 244)",

          drawBorder: false,

          // borderDash: [2],

          // zeroLineBorderDash: [2]

        }

      }],

    },

    legend: {

      display: false

    },

    tooltips: {
 
      titleMarginBottom: 10,

      titleFontColor: '#6e707e',

      titleFontSize: 14,

      backgroundColor: "rgb(255,255,255)",

      bodyFontColor: "#858796",

      borderColor: '#dddfeb',

      borderWidth: 1,

      xPadding: 15,

      yPadding: 15,

      displayColors: false,

      caretPadding: 10,

      }

    },

});
</script>

</body>

</html>
