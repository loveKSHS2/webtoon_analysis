<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<!--origin-->
<head>
  <meta charset="utf-8">
   <script src="https://www.koolchart.com/demo/LicenseKey/KoolChartLicense.js"></script>
  <script src="https://www.koolchart.com/demo/KoolChart/JS/KoolChart.js"></script>
  <link rel="stylesheet" href="https://www.koolchart.com/demo/KoolChart/Assets/Css/KoolChart.css"/>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
  KoolChart.create("chart1", "chartHolder1", "", "100%", "100%");
   KoolChart.create("chart2", "chartHolder2", "", "100%", "100%");
  var layoutStr =
             '<KoolChart backgroundColor="#FFFFFF" borderStyle="none" fontFamily="Noto Sans">' // The Google web fonts are used in this sample.
                    /*
                      Declares <WordCloudChart>
                     showDataTips: Whether or not to show tooltips when the user mouse overs the item.
                   */
                  +'<WordCloudChart showDataTips="true" selectionMode="single">'
                        +'<series>'
                           /*
                              Declares <WordCloudSeries>
                            */
                          +'<WordCloudSeries>'
                              +'<showDataEffect>'
                                   +'<SeriesInterpolate duration="1000"/>'
                               +'</showDataEffect>'
                              +'<fills>'
                                    +'<SolidColor color="#5473b3"/>'
                                  +'<SolidColor color="#3fb1e7"/>'
                                  +'<SolidColor color="#27a6b5"/>'
                                  +'<SolidColor color="#86d3ed"/>'
                                  +'<SolidColor color="#404362"/>'
                              +'</fills>'
                           +'</WordCloudSeries>'
                     +'</series>'
                  +'</WordCloudChart>'
              +'</KoolChart>';
  var chartData = ["PRAY","NEW","DO","DESIGN","COMMUNICATE","GREAT","LEAD","MOMENT","LOVE","DO","NEW","PRAY","GREAT","DESIGN","CREATIVE","LOVE","STUNNING","PRAY","LOVELY","DESIGN","GET","GOOD","NEW","COMMUNICATE","LOVE","NEW","LEAD","SUCCESS","LOVELY","LOVE","LEARN","PRAY","LOVE","COOL","DO","LOVE","GORGEOUS","HAPPY","GOAL","STORY","LOVE","STUNNING","COMMUNICATE","PRAY","GREAT","HAVE","LOVE","PEOPLE","MIRACLE","COMMUNICATE","WALK","LOVE","DO","COOL","WALK","PRAY","LIKE","LOVELY","NEW","DESIGN","TEACH","안녕","DO"];

// Use the KoolChart.calls function to register the functions to be executed when the chart is ready.
//
// argument 1 - Chart Identifier
// argument 2 - The function name to be executed (key) and the argument to be passed to the function (value)
KoolChart.calls("chart1", {
  "setLayout" : layoutStr,
    "setData" : chartData
});
KoolChart.calls("chart2", {
  "setLayout" : layoutStr,
    "setData" : chartData
});

/**
 * If you want to use themes provided with KoolChart version 3.0 or later, call the following functions.
 * otherwise, comment out or delete the following functions.
 *
 * -- The Themes registered in KoolChart.themes --
 * - simple
 * - cyber
 * - modern
 * - lovely
 * - pastel
 * -------------------------------------------------
 *
 * The KoolChart.themes variable is defined in theme.js
 */
KoolChart.registerTheme(KoolChart.themes);

/**
 * The function called when the theme button in the sample HTML is clicked.
 * Parameter Values:
 * - simple
 * - cyber
 * - modern
 * - lovely
 * - pastel
 * - default
 *
 * default: Applies the default theme which is the basic design of KoolChart.
 */
function KoolChartChangeTheme(theme){
  document.getElementById("chart1").setTheme(theme);
}
function KoolChartChangeTheme(theme){
  document.getElementById("chart2").setTheme(theme);
}
  </script>
  <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'My Daily Activities'
          ,chartArea:{left:2,top:2,width:"90%",height:"70%"}

        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
        window.addEventListener('resize', function() { chart.draw(data,options); }, false);

      }
    </script>

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
        <div class="sidebar-brand-text mx-3">Dashboard<sup>2</sup></div>
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
          <span>Dashboard</span></a>
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
    <!-- 사이드바 끝 -->

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

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
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
                
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://shared-comic.pstatic.net/thumb/webtoon/703856/thumbnail/thumbnail_IMAG06_70dd4e8a-b48a-4f09-a575-ad280f178ee7.jpg" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">8월의 눈보라</div>
                    <!-- <div class="small text-gray-500">Emily Fowler · 58m</div> -->
                  </div>
                </a>
                
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://shared-comic.pstatic.net/thumb/webtoon/703846/thumbnail/thumbnail_IMAG10_35503130-16ce-4236-b913-0fe76226de36.jpg" alt="">
                  </div>
                  <div>
                    <div class="text-truncate">여신강림</div>
                    <!-- <div class="small text-gray-500">Jae Chun · 1d</div> -->
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://shared-comic.pstatic.net/thumb/webtoon/651673/thumbnail/thumbnail_IMAG10_659b9446-0940-494a-bb5f-5893290a84d0.jpg" alt="">
                  </div>
                  <div>
                    <div class="text-truncate">유미의 세포들</div>
                    <!-- <div class="small text-gray-500">Morgan Alvarez · 2d</div> -->
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://shared-comic.pstatic.net/thumb/webtoon/570503/thumbnail/thumbnail_IMAG10_5719a3fe-81f4-4a0c-8c27-eca1631e8384.jpg" alt="">
                  </div>
                  <div>
                    <div class="text-truncate">연애혁명</div>
                    <!-- <div class="small text-gray-500">Chicken the Dog · 2w</div> -->
                  </div>
                </a>
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
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <!-- <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div> -->
                  </div>
                  <div>
                    <!-- 날짜 데이터 필요한 부분 -->
                    <div class="small text-gray-500">2019.08.17</div>
                    <!-- 제목 + 회차 데이터 필요한 부분-->
                    <span class="font-weight-bold">8월의 눈보라 42화</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <!-- <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div> -->
                  </div>
                  <div>
                    <div class="small text-gray-500">2019.08.10</div>
                    8월의 눈보라 41화
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <!-- <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div> -->
                  </div>
                  <div>
                    <div class="small text-gray-500">2019.08.03</div>
                    8월의 눈보라 40화
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <!-- <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div> -->
                  </div>
                  <div>
                    <div class="small text-gray-500">2019.07.27</div>
                    8월의 눈보라 39화
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <!-- <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div> -->
                  </div>
                  <div>
                    <div class="small text-gray-500">2019.07.20</div>
                    8월의 눈보라 38화
                  </div>
                </a>
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


          <div class="row"></div>

          <!-- Page Heading -->
          <!-- <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div> -->

          <!-- Content Row -->
          <div class="row">


            <!-- 작품 이름 카드 -->



            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="nanum text-s font-weight-bold text-primary text-uppercase mb-1">작품</div>
                      <!-- <div class="nanum h5 mb-0 font-weight-bold text-gray-800">8월의 눈보라</div> -->
                  		<h5 class="jeju text-gray-800">${map.selectedtitle}
                     	 <img src="https://shared-comic.pstatic.net/thumb/webtoon/703856/thumbnail/thumbnail_IMAG06_70dd4e8a-b48a-4f09-a575-ad280f178ee7.jpg" width="125" height="101" align="right">
                      	</h5>

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
                          <h6 class="jeju text-gray-800">${info.genre}</h6>
                        </c:if>
                         </c:forEach>
                          <!-- <div class="nanum h6 mb-0 mr-3 font-weight-bold text-gray-800">로맨스, 스토리, 일상, 드라마, 감성</div> -->
                          <c:forEach items="${memberList}" var="info">
                        	<c:if test="${info.episode == 9999 && info.title == '8월의 눈보라'}">
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

            <!-- Pending Requests Card Example -->
            <!-- <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Requests</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div> -->
          </div>

          <!-- Content Row -->

          <div class="row">

            <!-- 히트맵 Chart -->
            <div class="col-xl-9 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="nanum m-0 font-weight-bold text-primary">전체 에피소드 감성 분석</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div id="app"></div>
                  <div id="html">
                          <div id="chart">
                          <ReactApexChart options={this.state.options} series={this.state.series} type="heatmap" height="400" />
                          </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-4 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="nanum m-0 font-weight-bold text-primary">작가 키워드</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">

                  <div id="chartHolder1" style="width:350px; height:400px;">
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-4 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="nanum m-0 font-weight-bold text-primary">작품 키워드</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">

                  <div id="chartHolder2" style="width:350px; height:400px;">
                  </div>
                </div>
              </div>
            </div>

            <!-- Pie Chart -->
            <!-- <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4"> -->
                <!-- Card Header - Dropdown -->
                <!-- <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div> -->
                <!-- Card Body -->
                <!-- <div class="card-body">
                  <div class="chart-pie pt-4 pb-2">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> Direct
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> Social
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> Referral
                    </span>
                  </div>
                </div> -->
              </div>
            </div>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">

              <!-- Project Card Example -->
              <!-- <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Projects</h6>
                </div>
                <div class="card-body">
                  <h4 class="small font-weight-bold">Server Migration <span class="float-right">20%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">Sales Tracking <span class="float-right">40%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">Customer Database <span class="float-right">60%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">Payout Details <span class="float-right">80%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">Account Setup <span class="float-right">Complete!</span></h4>
                  <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div> -->

              <!-- Color System -->
              <!-- <div class="row">
                <div class="col-lg-6 mb-4">
                  <div class="card bg-primary text-white shadow">
                    <div class="card-body">
                      Primary
                      <div class="text-white-50 small">#4e73df</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-success text-white shadow">
                    <div class="card-body">
                      Success
                      <div class="text-white-50 small">#1cc88a</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-info text-white shadow">
                    <div class="card-body">
                      Info
                      <div class="text-white-50 small">#36b9cc</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-warning text-white shadow">
                    <div class="card-body">
                      Warning
                      <div class="text-white-50 small">#f6c23e</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-danger text-white shadow">
                    <div class="card-body">
                      Danger
                      <div class="text-white-50 small">#e74a3b</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-secondary text-white shadow">
                    <div class="card-body">
                      Secondary
                      <div class="text-white-50 small">#858796</div>
                    </div>
                  </div>
                </div>
              </div>

            </div> -->

            <!-- <div class="col-lg-6 mb-4"> -->

              <!-- Illustrations -->
              <!-- <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                  <p>Add some quality, svg illustrations to your project courtesy of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a constantly updated collection of beautiful svg images that you can use completely free and without attribution!</p>
                  <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on unDraw &rarr;</a>
                </div>
              </div> -->

              <!-- Approach -->
              <!-- <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Development Approach</h6>
                </div>
                <div class="card-body">
                  <p>SB Admin 2 makes extensive use of Bootstrap 4 utility classes in order to reduce CSS bloat and poor page performance. Custom CSS classes are used to create custom components and custom utility classes.</p>
                  <p class="mb-0">Before working with this theme, you should become familiar with the Bootstrap framework, especially the utility classes.</p>
                </div>
              </div> -->

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

    class HeatmapChart extends React.Component {

      constructor(props) {
        super(props);

        this.state = {
          options: {
            dataLabels: {
              enabled: false
            },
            colors: ["#008FFB"],

            // title: {
            //   text: '전체 화 감성 분석 히트맵 차트'
            // }
          },
          series: [
            {
              name: 'Metric1',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric2',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric3',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric4',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric5',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric6',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric7',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric8',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            },
            {
              name: 'Metric9',
              data: generateData(18, {
                min: 0,
                max: 90
              })
            }
          ],
        }
      }

      render() {
        return (
          <div>
            <div id="chart">
              <ReactApexChart options={this.state.options} series={this.state.series} type="heatmap" height="350" />
            </div>
            <div id="html-dist">
            </div>
          </div>
        );
      }
    }

    const domContainer = document.querySelector('#app');
    ReactDOM.render(React.createElement(HeatmapChart), domContainer);

  </script>

</body>

</html>
