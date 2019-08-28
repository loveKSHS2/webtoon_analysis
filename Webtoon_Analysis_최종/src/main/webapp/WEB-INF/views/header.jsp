<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <script src="resources/js/jquery.min.js"></script>
  <script>
		/* $(function(){
			$("#btnSearch").bind("click", function() {
				location.href = "/search";
			})
		}); */
  </script>

    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    
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
          <form action="/search" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" name="searchedTitle" id="searchedTitle" class="form-control bg-light border-0 small" placeholder="작품 제목 검색" aria-label="Search" aria-describedby="basic-addon2">
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
                
                
                <a class="dropdown-item d-flex align-items-center" href="search">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://shared-comic.pstatic.net/thumb/webtoon/703856/thumbnail/thumbnail_IMAG06_70dd4e8a-b48a-4f09-a575-ad280f178ee7.jpg" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate" name="searchedTitle" >8월의 눈보라</div>
                    <!-- <div class="small text-gray-500">Emily Fowler · 58m</div> -->
                  </div>
                </a>
                
                
                <form action="/selectWebtoon" method="post">
                <a class="dropdown-item d-flex align-items-center" href="/selectWebtoon">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://shared-comic.pstatic.net/thumb/webtoon/703846/thumbnail/thumbnail_IMAG10_35503130-16ce-4236-b913-0fe76226de36.jpg" alt="">
                  </div>
                  <div>
                    <div id="selectedTitle" name="selectedTitle" class="text-truncate">여신강림</div>
                    <!-- <div class="small text-gray-500">Jae Chun · 1d</div> -->
                  </div>
                </a>
                </form>
                
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
        
  </body>
</html>

		
