<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>

  <meta charset="utf-8">
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  <!-- 워드 클라우드 스크립트  ------>
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




<!-- 워드클라우드 스크립트------->

  <script src="https://www.koolchart.com/demo/LicenseKey/KoolChartLicense.js"></script>
  <script src="https://www.koolchart.com/demo/KoolChart/JS/KoolChart.js"></script>
  <link rel="stylesheet" href="https://www.koolchart.com/demo/KoolChart/Assets/Css/KoolChart.css"/>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
  KoolChart.create("chart3", "chartHolder3", "", "100%", "100%");
   KoolChart.create("chart4", "chartHolder4", "", "100%", "100%");
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
                                    +'<SolidColor color=""/>'
                                  +'<SolidColor color="#ee3a1f"/>'
                                  +'<SolidColor color="#dd5035"/>'
                                  +'<SolidColor color="#ca6048"/>'
                                  +'<SolidColor color="#b56d5b"/>'
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
KoolChart.calls("chart3", {
  "setLayout" : layoutStr,
    "setData" : chartData
});
KoolChart.calls("chart4", {
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
  document.getElementById("chart3").setTheme(theme);
}
function KoolChartChangeTheme(theme){
  document.getElementById("chart4").setTheme(theme);
}
  </script>


  <!-- 워드클라우드 스크립트------->

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
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-2 text-gray-800">Charts</h1>
          <p class="mb-4">Chart.js is a third party plugin that is used to generate the charts in this theme. The charts below have been customized - for further customization options, please visit the <a target="_blank" href="https://www.chartjs.org/docs/latest/">official Chart.js documentation</a>.</p> -->

          <!-- Content Row -->
          <div class="row">
            <div class="col-xl-5 col-md-5 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="nanum text-l font-weight-bold text-primary text-uppercase mb-1">인기 웹툰<br></div>
                      <br>
                      <!-- <div class="nanum h5 mb-0 font-weight-bold text-gray-800">8월의 눈보라</div> -->

                      <h6 class="jeju text-gray-800">여신강림</h6>
                      <h6 class="jeju text-gray-800">유미의 세포들</h6>
                      <h6 class="jeju text-gray-800">연애혁명</h6>
                      <br>
                      <img src="https://shared-comic.pstatic.net/thumb/webtoon/703846/thumbnail/thumbnail_IMAG10_35503130-16ce-4236-b913-0fe76226de36.jpg" width="70" height="70">
                      &#32;	&#32;	&#32;
                      <img src="https://shared-comic.pstatic.net/thumb/webtoon/651673/thumbnail/thumbnail_IMAG10_659b9446-0940-494a-bb5f-5893290a84d0.jpg" width="70" height="70">
                      &#32;	&#32;	&#32;
                      <img src="https://shared-comic.pstatic.net/thumb/webtoon/570503/thumbnail/thumbnail_IMAG10_5719a3fe-81f4-4a0c-8c27-eca1631e8384.jpg" width="70" height="70">

                      <!-- <br> -->
                    </div>
                    <!-- <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-5 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="nanum text-l font-weight-bold text-info text-uppercase mb-1">비인기 웹툰<br></div>
                      <br>
                      <!-- <div class="nanum h5 mb-0 font-weight-bold text-gray-800">8월의 눈보라</div> -->
                      <h6 class="jeju text-gray-800">8월의 눈보라</h6>
                      <h6 class="jeju text-gray-800">악마와 계약연애</h6>
                      <h6 class="jeju text-gray-800">안녕 대학생</h6>
                      <br>
                      <img src="https://shared-comic.pstatic.net/thumb/webtoon/703856/thumbnail/thumbnail_IMAG06_70dd4e8a-b48a-4f09-a575-ad280f178ee7.jpg" width="70" height="70">
                      &#32;	&#32;	&#32;
                      <img src="https://shared-comic.pstatic.net/thumb/webtoon/710750/thumbnail/thumbnail_IMAG06_cc0755f6-90f7-499c-a067-4cb2e1be9c0d.jpg" width="70" height="70" >
                      &#32;	&#32;	&#32;
                      <img src="https://shared-comic.pstatic.net/thumb/webtoon/703633/thumbnail/thumbnail_IMAG06_40ee18c7-6d2f-4334-88a5-e0a6004e01ba.jpg" width="70" height="70">

                      <!-- <br> -->
                    </div>
                    <!-- <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>


          </div>
          <!--end of row-->
          
           <div class="row">
          <div class="col-xl-5 col-lg-5 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">인기웹툰 감정 분석</h6>
                </div>
                <div class="card-body">
                  <div class="chart-pie pt-4 pb-2">
                    <canvas id="myPieChart" style="width:350px; height:400px;">
                  </canvas>
                  </div>
                  <hr>
                  인기 웹툰의 감정 분석 결과를 확인하세요.

                </div>
              </div>


            </div>
            <div class="col-xl-5 col-lg-5 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">비인기 웹툰 감정 분석</h6>
                </div>
                <div class="card-body">
                  <div class="chart-pie pt-4 pb-2">
                    <canvas id="myPieChart2" style="width:350px; height:400px;">
                  </canvas>
                  </div>
                  <hr>
                 비인기 웹툰의 감정 분석 결과를 확인하세요.

                </div>
              </div>
            </div>

          </div>

          <div class="row">
            <div class="col-xl-5 col-lg-5 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">인기 웹툰 트위터 언급량</h6>
                </div>
                <div class="card-body">
                  <div class="chart-bar">
                      <canvas id="myBarChart"></canvas>
                    </div>
                  <hr>
                 업로드일 기준 일주일간의 트위터 언급량을 확인하세요
                </div>
              </div>
            </div>

            <div class="col-xl-5 col-lg-5 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">비인기 웹툰 트위터 언급량</h6>
                </div>
                <div class="card-body">
                  <div class="chart-bar">
                      <canvas id="myBarChart2"></canvas>
                    </div>
                  <hr>
                   업로드일 기준 일주일간의 트위터 언급량을 확인하세요
                </div>
              </div>
            </div>
          </div>
          <div class="row">
          <!-- 댓글요약 -->
            <div class="col-xl-5 col-lg-4 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">인기 웹툰 작품 키워드</h6>
                </div>
                <div class="card-body">
                  <div id="anychart-embed-NqAPYRCG4" class="anychart-embed anychart-embed-NqAPYRCG">
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
                     <div id="ac_style_NqAPYRCG4" style="display:none;">
                  <style>
                  #container5 {
                      width: 70%;
                      height: 80%;
                      margin: 0;
                      padding: 0;
                  }
                    </style>
                     </div>
                  <script>(function(){
                  function ac_add_to_head(el){
                  	var head = document.getElementsByTagName('head')[0];
                  	head.insertBefore(el,head.firstChild);
                  }
                  function ac_add_link(url){
                  	var el = document.createElement('link');
                  	el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
                  	ac_add_to_head(el);
                  }
                  function ac_add_style(css){
                  	var ac_style = document.createElement('style');
                  	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
                  	else ac_style.appendChild(document.createTextNode(css));
                  	ac_add_to_head(ac_style);
                  }

                  ac_add_style(document.getElementById("ac_style_NqAPYRCG").innerHTML);
                  ac_add_style(".anychart-embed-NqAPYRCG{width:500px;height:300px;}");
                  })();</script>
                    <div id="container5"></div>
                  <script>
                  anychart.onDocumentReady(function () {
                    // 워드클라우드 차트 데이터 부분
                    var data = [
                      {"x": "내용", "value": 259, category: "스토리"},
                      {"x": "주관", "value": 259, category: "스토리"},
                      {"x": "작가", "value": 259, category: "스토리"},
                      {"x": "쟁쟁", "value": 250, category: "스토리"},
                      {"x": "정식", "value": 259, category: "스토리"},
                      {"x": "창", "value": 259, category: "스토리"},
                      {"x": "생일", "value": 259, category: "스토리"},
                      {"x": "린지", "value": 259, category: "스토리"},

                      {"x": "어지럽다", "value": 51, category: "그림"},
                      {"x": "과장하다", "value": 51, category: "그림"},
                      {"x": "으아아", "value": 51, category: "그림"},
                      {"x": "묻히다", "value": 51, category: "그림"},
                      {"x": "연재", "value": 51, category: "그림"},
                      {"x": "악플", "value": 51, category: "그림"},
                      {"x": "드리다", "value": 51, category: "그림"},
                      {"x": "조잡하다", "value": 51, category: "그림"},

                      {"x": "진부", "value": 45, category: "생각"},
                      {"x": "일정하다", "value": 45, category: "생각"},
                      {"x": "거짓", "value": 45, category: "생각"},
                      {"x": "뽑히다", "value": 45, category: "생각"},
                      {"x": "편지", "value": 45, category: "생각"},
                      {"x": "작가", "value": 45, category: "생각"},
                      {"x": "댓", "value": 45, category: "생각"},
                      {"x": "생신", "value": 45, category: "생각"},
                      {"x": "스토리", "value": 45, category: "생각"},

                      {"x": "진짜", "value": 45, category: "진짜"},
                      {"x": "프로그램", "value": 45, category: "진짜"},
                      {"x": "내뱉다", "value": 45, category: "진짜"},
                      {"x": "세번", "value": 45, category: "진짜"},
                      {"x": "간신히", "value": 45, category: "진짜"},
                      {"x": "작전", "value": 45, category: "진짜"},
                      {"x": "중단", "value": 45, category: "진짜"},
                      {"x": "기능", "value": 45, category: "진짜"},
                      {"x": "추가", "value": 45, category: "진짜"},
                      {"x": "산만하다", "value": 45, category: "진짜"}

                    ];

                    // create a tag cloud chart
                    var chart = anychart.tagCloud(data);


                    // create and configure a color scale.
                   var customColorScale = anychart.scales.ordinalColor();
                   customColorScale.colors(["#D9418C", "#9253EB", "#BA2B2B","	#2F9D27"]);

                    // set the color scale as the color scale of the chart
                   chart.colorScale(customColorScale);

                    // add a color range
                    chart.colorRange().enabled(true);

                    // set the chart title
                    // chart.title('15 most spoken languages')
                    // set array of angles, by which words will be placed
                    chart.angles([0])
                    // enable color range
                    //chart.colorRange(true);
                    // set color range length
                    chart.colorRange().length('80%');

                    // display chart
                    chart.container("container5");
                    chart.draw();
                  });
                  </script>
                  </div>
                  <hr>인기 웹툰의 작품 관련 키워드를 확인하세요
                </div>
              </div>

            </div>

            <div class="col-xl-5 col-lg-4 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">비인기 웹툰 작품 키워드</h6>
                </div>
                <div class="card-body">
                  <div id="anychart-embed-NqAPYRCG5" class="anychart-embed anychart-embed-NqAPYRCG">
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
                     <div id="ac_style_NqAPYRCG5" style="display:none;">
                  <style>
                  #container6 {
                      width: 70%;
                      height: 80%;
                      margin: 0;
                      padding: 0;
                  }
                    </style>
                     </div>
                  <script>(function(){
                  function ac_add_to_head(el){
                  	var head = document.getElementsByTagName('head')[0];
                  	head.insertBefore(el,head.firstChild);
                  }
                  function ac_add_link(url){
                  	var el = document.createElement('link');
                  	el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
                  	ac_add_to_head(el);
                  }
                  function ac_add_style(css){
                  	var ac_style = document.createElement('style');
                  	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
                  	else ac_style.appendChild(document.createTextNode(css));
                  	ac_add_to_head(ac_style);
                  }

                  ac_add_style(document.getElementById("ac_style_NqAPYRCG").innerHTML);
                  ac_add_style(".anychart-embed-NqAPYRCG{width:500px;height:300px;}");
                  })();</script>
                    <div id="container6"></div>
                  <script>
                  anychart.onDocumentReady(function () {
                    // 워드클라우드 차트 데이터 부분
                    var data = [
                      {"x": "내용", "value": 35, category: "사람"},
                      {"x": "주관", "value": 35, category: "사람"},
                      {"x": "작가", "value": 35, category: "사람"},
                      {"x": "라혜", "value": 35, category: "사람"},
                      {"x": "천사", "value": 35, category: "사람"},
                      {"x": "류승범", "value": 35, category: "사람"},
                      {"x": "생일", "value": 35, category: "사람"},
                      {"x": "린지", "value": 35, category: "사람"},

                      {"x": "어지럽다", "value": 51, category: "생각"},
                      {"x": "과장하다", "value": 51, category: "생각"},
                      {"x": "으아아", "value": 51, category: "생각"},
                      {"x": "묻히다", "value": 51, category: "생각"},
                      {"x": "연재", "value": 51, category: "생각"},
                      {"x": "악플", "value": 51, category: "생각"},
                      {"x": "드리다", "value": 51, category: "생각"},
                      {"x": "조잡하다", "value": 51, category: "생각"},

                      {"x": "진부", "value": 45, category: "말"},
                      {"x": "일정하다", "value": 45, category: "말"},
                      {"x": "거짓", "value": 45, category: "말"},
                      {"x": "뽑히다", "value": 45, category: "말"},
                      {"x": "별로", "value": 45, category: "말"},
                      {"x": "작가", "value": 45, category: "말"},
                      {"x": "지루하다", "value": 45, category: "말"},
                      {"x": "생신", "value": 45, category: "말"},
                      {"x": "악플", "value": 45, category: "말"},

                      {"x": "그림실력", "value": 120, category: "여주"},
                      {"x": "언급", "value": 120, category: "여주"},
                      {"x": "비판", "value": 120, category: "여주"},
                      {"x": "세번", "value": 120, category: "여주"},
                      {"x": "간신히", "value": 120, category: "여주"},
                      {"x": "지루하다", "value": 120, category: "여주"},
                      {"x": "중단", "value": 120, category: "여주"},
                      {"x": "기능", "value": 120, category: "여주"},
                      {"x": "추가", "value": 120, category: "여주"},
                      {"x": "산만하다", "value": 120, category: "여주"}

                    ];

                    // create a tag cloud chart
                    var chart = anychart.tagCloud(data);


                    // create and configure a color scale.
                   var customColorScale = anychart.scales.ordinalColor();
                   customColorScale.colors(["#D9418C", "#9253EB", "#BA2B2B","	#2F9D27"]);

                    // set the color scale as the color scale of the chart
                   chart.colorScale(customColorScale);

                    // add a color range
                    chart.colorRange().enabled(true);

                    // set the chart title
                    // chart.title('15 most spoken languages')
                    // set array of angles, by which words will be placed
                    chart.angles([0])
                    // enable color range
                    //chart.colorRange(true);
                    // set color range length
                    chart.colorRange().length('80%');

                    // display chart
                    chart.container("container6");
                    chart.draw();
                  });
                  </script>
                  </div>
                  <hr> 비인기 웹툰의 작품 관련 키워드를 확인하세요
                </div>
              </div>

            </div>
          </div>
           <!-- end of row2-->


          <div class="row">
          <div class="col-xl-5 col-lg-5 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">인기 웹툰 작가 키워드</h6>
                </div>
                <div class="card-body">
                <div id="anychart-embed-NqAPYRCG" class="anychart-embed anychart-embed-NqAPYRCG">
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
                  <div id="ac_style_NqAPYRCG" style="display:none;">
                  #container {
                      width: 70%;
                      height: 80%;
                      margin: 0;
                      padding: 0;
                  }

                  </div>
                  <script>(function(){
                  function ac_add_to_head(el){
                  	var head = document.getElementsByTagName('head')[0];
                  	head.insertBefore(el,head.firstChild);
                  }
                  function ac_add_link(url){
                  	var el = document.createElement('link');
                  	el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
                  	ac_add_to_head(el);
                  }
                  function ac_add_style(css){
                  	var ac_style = document.createElement('style');
                  	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
                  	else ac_style.appendChild(document.createTextNode(css));
                  	ac_add_to_head(ac_style);
                  }

                  ac_add_style(document.getElementById("ac_style_NqAPYRCG").innerHTML);
                  ac_add_style(".anychart-embed-NqAPYRCG{width:500px;height:500px;}");
                  })();</script>
                  <div id="container"></div>
                  <script>
                  anychart.onDocumentReady(function () {
                    // 워드클라우드 차트 데이터 부분
                    var data = [
                      {"x": "내용", "value": 280, category: "작가"},
                      {"x": "천사", "value": 280, category: "작가"},
                      {"x": "작가", "value": 280, category: "작가"},
                      {"x": "행복", "value": 280, category: "작가"},
                      {"x": "정식", "value": 280, category: "작가"},
                      {"x": "그림실력", "value": 280, category: "작가"},
                      {"x": "생일", "value": 280, category: "작가"},
                      {"x": "극화", "value": 280, category: "작가"},

                      {"x": "행복", "value": 51, category: "그림"},
                      {"x": "과장하다", "value": 51, category: "그림"},
                      {"x": "봄", "value": 51, category: "그림"},
                      {"x": "묻히다", "value": 51, category: "그림"},
                      {"x": "연재", "value": 51, category: "그림"},
                      {"x": "비율", "value": 51, category: "그림"},
                      {"x": "그리다", "value": 51, category: "그림"},
                      {"x": "노력", "value": 51, category: "그림"},

                      {"x": "경의", "value": 45, category: "생각"},
                      {"x": "일정하다", "value": 45, category: "생각"},
                      {"x": "거짓", "value": 45, category: "생각"},
                      {"x": "추측", "value": 45, category: "생각"},
                      {"x": "고민", "value": 45, category: "생각"},
                      {"x": "작가", "value": 45, category: "생각"},
                      {"x": "고생", "value": 45, category: "생각"},
                      {"x": "노력", "value": 45, category: "생각"},
                      {"x": "스토리", "value": 45, category: "생각"},

                      {"x": "진짜", "value": 180, category: "행동"},
                      {"x": "프로그램", "value": 180, category: "행동"},
                      {"x": "내뱉다", "value": 180, category: "행동"},
                      {"x": "세번", "value": 180, category: "행동"},
                      {"x": "간신히", "value": 180, category: "행동"},
                      {"x": "작전", "value": 180, category: "행동"},
                      {"x": "중단", "value": 180, category: "행동"},
                      {"x": "기능", "value": 180, category: "행동"},
                      {"x": "추가", "value": 180, category: "행동"},
                      {"x": "산만하다", "value": 180, category: "행동"}

                    ];

                    // create a tag cloud chart
                    var chart = anychart.tagCloud(data);

                    // set the chart title
                    // chart.title('15 most spoken languages')
                    // set array of angles, by which words will be placed
                    chart.angles([0])
                    // enable color range
                    chart.colorRange(true);
                    // set color range length
                    chart.colorRange().length('80%');

                    // display chart
                    chart.container("container");
                    chart.draw();
                  });
                  </script>
                  </div>
                  <hr>
                  인기 웹툰의 작가 관련 키워드를 확인하세요
                  </div>
              </div>
              </div>



            <div class="col-xl-5 col-lg-4 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">비인기 웹툰 작가 키워드</h6>
                </div>
                <div class="card-body">
                  <div id="anychart-embed-NqAPYRCG1" class="anychart-embed anychart-embed-NqAPYRCG">
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
                     <div id="ac_style_NqAPYRCG1" style="display:none;">
                  <style>
                  #container2 {
                      width: 70%;
                      height: 80%;
                      margin: 0;
                      padding: 0;
                  }
                    </style>
                     </div>
                  <script>(function(){
                  function ac_add_to_head(el){
                  	var head = document.getElementsByTagName('head')[0];
                  	head.insertBefore(el,head.firstChild);
                  }
                  function ac_add_link(url){
                  	var el = document.createElement('link');
                  	el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
                  	ac_add_to_head(el);
                  }
                  function ac_add_style(css){
                  	var ac_style = document.createElement('style');
                  	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
                  	else ac_style.appendChild(document.createTextNode(css));
                  	ac_add_to_head(ac_style);
                  }

                  ac_add_style(document.getElementById("ac_style_NqAPYRCG").innerHTML);
                  ac_add_style(".anychart-embed-NqAPYRCG{width:500px;height:300px;}");
                  })();</script>
                    <div id="container2"></div>
                  <script>
                  anychart.onDocumentReady(function () {
                    // 워드클라우드 차트 데이터 부분
                    var data = [
                      {"x": "정말", "value": 100, category: "작가"},
                      {"x": "주관", "value": 100, category: "작가"},
                      {"x": "작가", "value": 100, category: "작가"},
                      {"x": "당신", "value": 100, category: "작가"},
                      {"x": "그림", "value": 100, category: "작가"},
                      {"x": "비율", "value": 100, category: "작가"},
                      {"x": "답답하다", "value": 100, category: "작가"},
                      {"x": "응원", "value": 100, category: "작가"},

                      {"x": "어지럽다", "value": 71, category: "소박"},
                      {"x": "과장하다", "value": 71, category: "소박"},
                      {"x": "느낌", "value": 71, category: "소박"},
                      {"x": "묻히다", "value": 71, category: "소박"},
                      {"x": "실력", "value": 71, category: "소박"},
                      {"x": "악플", "value": 71, category: "소박"},
                      {"x": "드리다", "value": 71, category: "소박"},
                      {"x": "네이버", "value": 71, category: "소박"},

                      {"x": "진부", "value": 45, category: "생각"},
                      {"x": "일정하다", "value": 45, category: "생각"},
                      {"x": "거짓", "value": 45, category: "생각"},
                      {"x": "뽑히다", "value": 45, category: "생각"},
                      {"x": "편지", "value": 45, category: "생각"},
                      {"x": "작가", "value": 45, category: "생각"},
                      {"x": "베댓", "value": 45, category: "생각"},
                      {"x": "답답하다", "value": 45, category: "생각"},
                      {"x": "스토리", "value": 45, category: "생각"},

                      {"x": "진짜", "value": 132, category: "그림실력"},
                      {"x": "소박", "value": 132, category: "그림실력"},
                      {"x": "내뱉다", "value": 132, category: "그림실력"},
                      {"x": "인체", "value": 132, category: "그림실력"},
                      {"x": "답답하다", "value": 132, category: "그림실력"},
                      {"x": "작전", "value": 132, category: "그림실력"},
                      {"x": "중단", "value": 132, category: "그림실력"},
                      {"x": "비율", "value": 132, category: "그림실력"},
                      {"x": "추가", "value": 132, category: "그림실력"},
                      {"x": "산만하다", "value": 132, category: "그림실력"}

                    ]; 

                    // create a tag cloud chart
                    var chart = anychart.tagCloud(data);

                    // set the chart title
                    // chart.title('15 most spoken languages')
                    // set array of angles, by which words will be placed
                    chart.angles([0])
                    // enable color range
                    chart.colorRange(true);
                    // set color range length
                    chart.colorRange().length('80%');

                    // display chart
                    chart.container("container2");
                    chart.draw();
                  });
                  </script>
                  </div>
                  <hr>
                  비인기 웹툰의 작가 관련 키워드를 확인하세요
                </div>
              </div>
            </div>
            </div>
        </div>
           <!-- end of row3-->


          <div class="row">

        <!--     <div class="col-xl-5 col-lg-4 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">작품 키워드</h6>
                </div>
                <div class="card-body">
                  <div id="anychart-embed-NqAPYRCG2" class="anychart-embed anychart-embed-NqAPYRCG">
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
                     <div id="ac_style_NqAPYRCG2" style="display:none;">
                  <style>
                  #container3 {
                      width: 70%;
                      height: 80%;
                      margin: 0;
                      padding: 0;
                  }
                    </style>
                     </div>
                  <script>(function(){
                  function ac_add_to_head(el){
                  	var head = document.getElementsByTagName('head')[0];
                  	head.insertBefore(el,head.firstChild);
                  }
                  function ac_add_link(url){
                  	var el = document.createElement('link');
                  	el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
                  	ac_add_to_head(el);
                  }
                  function ac_add_style(css){
                  	var ac_style = document.createElement('style');
                  	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
                  	else ac_style.appendChild(document.createTextNode(css));
                  	ac_add_to_head(ac_style);
                  }

                  ac_add_style(document.getElementById("ac_style_NqAPYRCG").innerHTML);
                  ac_add_style(".anychart-embed-NqAPYRCG{width:500px;height:300px;}");
                  })();</script>
                    <div id="container3"></div>
                  <script>
                  anychart.onDocumentReady(function () {
                    // 워드클라우드 차트 데이터 부분
                    var data = [
                      {"x": "내용", "value": 259, category: "스토리"},
                      {"x": "주관", "value": 259, category: "스토리"},
                      {"x": "작가", "value": 259, category: "스토리"},
                      {"x": "쟁쟁", "value": 250, category: "스토리"},
                      {"x": "정식", "value": 259, category: "스토리"},
                      {"x": "창", "value": 259, category: "스토리"},
                      {"x": "생일", "value": 259, category: "스토리"},
                      {"x": "린지", "value": 259, category: "스토리"},

                      {"x": "어지럽다", "value": 51, category: "그림"},
                      {"x": "과장하다", "value": 51, category: "그림"},
                      {"x": "으아아", "value": 51, category: "그림"},
                      {"x": "묻히다", "value": 51, category: "그림"},
                      {"x": "연재", "value": 51, category: "그림"},
                      {"x": "악플", "value": 51, category: "그림"},
                      {"x": "드리다", "value": 51, category: "그림"},
                      {"x": "조잡하다", "value": 51, category: "그림"},

                      {"x": "진부", "value": 45, category: "생각"},
                      {"x": "일정하다", "value": 45, category: "생각"},
                      {"x": "거짓", "value": 45, category: "생각"},
                      {"x": "뽑히다", "value": 45, category: "생각"},
                      {"x": "편지", "value": 45, category: "생각"},
                      {"x": "작가", "value": 45, category: "생각"},
                      {"x": "댓", "value": 45, category: "생각"},
                      {"x": "생신", "value": 45, category: "생각"},
                      {"x": "스토리", "value": 45, category: "생각"},

                      {"x": "진짜", "value": 45, category: "진짜"},
                      {"x": "프로그램", "value": 45, category: "진짜"},
                      {"x": "내뱉다", "value": 45, category: "진짜"},
                      {"x": "세번", "value": 45, category: "진짜"},
                      {"x": "간신히", "value": 45, category: "진짜"},
                      {"x": "작전", "value": 45, category: "진짜"},
                      {"x": "중단", "value": 45, category: "진짜"},
                      {"x": "기능", "value": 45, category: "진짜"},
                      {"x": "추가", "value": 45, category: "진짜"},
                      {"x": "산만하다", "value": 45, category: "진짜"}

                    ];

                    // create a tag cloud chart
                    var chart = anychart.tagCloud(data);

                     var customColorScale = anychart.scales.ordinalColor();
                   customColorScale.colors(["#BA55D3", "#e6b800", "#ff4d4d","	#3CB371"]);

                    // set the color scale as the color scale of the chart
                   chart.colorScale(customColorScale);

                    // add a color range
                    chart.colorRange().enabled(true);

                    // set the chart title
                    // chart.title('15 most spoken languages')
                    // set array of angles, by which words will be placed
                    chart.angles([0])
                    // enable color range
                    chart.colorRange(true);
                    // set color range length
                    chart.colorRange().length('80%');

                    // display chart
                    chart.container("container3");
                    chart.draw();
                  });
                  </script>
                  </div>
                  <hr>여기에다가 작품 키워드 차트 넣기
                </div>
              </div>

            </div> -->
<!-- 
            <div class="col-xl-5 col-lg-4 col-md-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">작품 키워드</h6>
                </div>
                <div class="card-body">
                  <div id="anychart-embed-NqAPYRCG3" class="anychart-embed anychart-embed-NqAPYRCG">
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
                  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
                     <div id="ac_style_NqAPYRCG3" style="display:none;">
                  <style>
                  #container4 {
                      width: 70%;
                      height: 80%;
                      margin: 0;
                      padding: 0;
                  }
                    </style>
                     </div>
                  <script>(function(){
                  function ac_add_to_head(el){
                  	var head = document.getElementsByTagName('head')[0];
                  	head.insertBefore(el,head.firstChild);
                  }
                  function ac_add_link(url){
                  	var el = document.createElement('link');
                  	el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
                  	ac_add_to_head(el);
                  }
                  function ac_add_style(css){
                  	var ac_style = document.createElement('style');
                  	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
                  	else ac_style.appendChild(document.createTextNode(css));
                  	ac_add_to_head(ac_style);
                  }

                  ac_add_style(document.getElementById("ac_style_NqAPYRCG").innerHTML);
                  ac_add_style(".anychart-embed-NqAPYRCG{width:500px;height:300px;}");
                  })();</script>
                    <div id="container4"></div>
                  <script>
                  anychart.onDocumentReady(function () {
                    // 워드클라우드 차트 데이터 부분
                    var data = [
                      {"x": "내용", "value": 259, category: "스토리"},
                      {"x": "주관", "value": 259, category: "스토리"},
                      {"x": "작가", "value": 259, category: "스토리"},
                      {"x": "쟁쟁", "value": 250, category: "스토리"},
                      {"x": "정식", "value": 259, category: "스토리"},
                      {"x": "창", "value": 259, category: "스토리"},
                      {"x": "생일", "value": 259, category: "스토리"},
                      {"x": "린지", "value": 259, category: "스토리"},

                      {"x": "어지럽다", "value": 51, category: "그림"},
                      {"x": "과장하다", "value": 51, category: "그림"},
                      {"x": "으아아", "value": 51, category: "그림"},
                      {"x": "묻히다", "value": 51, category: "그림"},
                      {"x": "연재", "value": 51, category: "그림"},
                      {"x": "악플", "value": 51, category: "그림"},
                      {"x": "드리다", "value": 51, category: "그림"},
                      {"x": "조잡하다", "value": 51, category: "그림"},

                      {"x": "진부", "value": 45, category: "생각"},
                      {"x": "일정하다", "value": 45, category: "생각"},
                      {"x": "거짓", "value": 45, category: "생각"},
                      {"x": "뽑히다", "value": 45, category: "생각"},
                      {"x": "편지", "value": 45, category: "생각"},
                      {"x": "작가", "value": 45, category: "생각"},
                      {"x": "댓", "value": 45, category: "생각"},
                      {"x": "생신", "value": 45, category: "생각"},
                      {"x": "스토리", "value": 45, category: "생각"},

                      {"x": "진짜", "value": 45, category: "테스트"},
                      {"x": "프로그램", "value": 45, category: "테스트"},
                      {"x": "내뱉다", "value": 45, category: "테스트"},
                      {"x": "세번", "value": 45, category: "테스트"},
                      {"x": "간신히", "value": 45, category: "테스트"},
                      {"x": "작전", "value": 45, category: "테스트"},
                      {"x": "중단", "value": 45, category: "테스트"},
                      {"x": "기능", "value": 45, category: "테스트"},
                      {"x": "추가", "value": 45, category: "테스트"},
                      {"x": "산만하다", "value": 45, category: "테스트"}

                    ];

                    // create a tag cloud chart
                    var chart = anychart.tagCloud(data);


                    // create and configure a color scale.
                   var customColorScale = anychart.scales.ordinalColor();
                   customColorScale.colors(["#BA55D3", "#e6b800", "#ff4d4d","	#3CB371"]);

                    // set the color scale as the color scale of the chart
                   chart.colorScale(customColorScale);

                    // add a color range
                    chart.colorRange().enabled(true);

                    // set the chart title
                    // chart.title('15 most spoken languages')
                    // set array of angles, by which words will be placed
                    chart.angles([0])
                    // enable color range
                    //chart.colorRange(true);
                    // set color range length
                    chart.colorRange().length('80%');

                    // display chart
                    chart.container("container4");
                    chart.draw();
                  });
                  </script>
                  </div>
                  <hr>여기에다가 작품 키워드 차트 넣기
                </div>
              </div>

            </div>
            </div> -->






           <!-- end of row4-->

         
           <!-- end of row5-->


          <!-- end of row6-->

          <div class="row">
          <!--<div id="container"></div>-->


          </div>
          <!-- end of row6-->

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <!--<footer class="sticky-footer bg-white">-->
        <!--<div class="container my-auto">-->
          <!--<div class="copyright text-center my-auto">-->
            <!--<span>Copyright &copy; Your Website 2019</span>-->
          <!--</div>-->
        <!--</div>-->
      <!--</footer>-->
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
 <!--  <script src="resources/js/demo/chart-bar-demo.js"></script> -->
<!--   <script src="resources/js/demo/chart-bar-demo2.js"></script> -->
 <script src="resources/js/demo/romanceBarChart.js"></script>
  <script src="resources/js/demo/romanceBarChart2.js"></script>
   <script src="resources/js/demo/romancepiechart.js"></script>
   
   <script>
// Set new default font family and font color to mimic Bootstrap's default styling
   Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
   Chart.defaults.global.defaultFontColor = '#858796';


   // Bar Chart Example
   var ctx = document.getElementById("myBarChart");
   var myBarChart = new Chart(ctx, {
     type: 'bar',
     data: {
       // 날짜 정보 넣기
       labels: ["08.16", "08.17", "08.18", "08.19", "08.20", "08.21", "08.22"],
       datasets: [{
         label: "언급량",
         backgroundColor: "#4e73df",
         hoverBackgroundColor: "#2e59d9",
         borderColor: "#4e73df",
         data: [10, 25, 15, 12, 13, 14, 30, 0], 
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

	<script>
	// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';


// Bar Chart Example
var ctx = document.getElementById("myBarChart2");
var myBarChart2 = new Chart(ctx, {
  type: 'bar',
  data: {
    // 날짜 정보 넣기
    labels: ["08.16", "08.17", "08.18", "08.19", "08.20", "08.21", "08.22"],
    datasets: [{
      label: "언급량",
      backgroundColor: "#4e73df",
      hoverBackgroundColor: "#2e59d9",
      borderColor: "#4e73df",
      data: [1, 5, 3, 6, 7, 8, 20],
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
