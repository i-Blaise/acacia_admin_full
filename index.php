<?php
require_once('ClassLibraries/AdminClass.php');
$adminPlug = new adminClass();

$resultLessThan30 = $adminPlug->fetchResultLessThan30();
$result30To50 = $adminPlug->fetchResult30To50();
$result50To70 = $adminPlug->fetchResult50To70();
$fetchResultGreaterThan70 = $adminPlug->fetchResultGreaterThan70();


// USERS TABLE
$fetchAllUsersDashboard = $adminPlug->fetchAllUsersDashboard();

// TOTAL USER BY MONTH OF YEAR
$lastYear = date("Y", strtotime("-1 year"));
$thisYear = date("Y");

// THIS YEAR!!
$Jan = $adminPlug->countUsersByYearAndMonth($thisYear, '1');
$Feb = $adminPlug->countUsersByYearAndMonth($thisYear, '2');
$Mar = $adminPlug->countUsersByYearAndMonth($thisYear, '3');
$Apr = $adminPlug->countUsersByYearAndMonth($thisYear, '4');
$May = $adminPlug->countUsersByYearAndMonth($thisYear, '5');
$Jun = $adminPlug->countUsersByYearAndMonth($thisYear, '6');
$Jul = $adminPlug->countUsersByYearAndMonth($thisYear, '7');
$Aug = $adminPlug->countUsersByYearAndMonth($thisYear, '8');
$Sep = $adminPlug->countUsersByYearAndMonth($thisYear, '9');
$Oct = $adminPlug->countUsersByYearAndMonth($thisYear, '10');
$Nov = $adminPlug->countUsersByYearAndMonth($thisYear, '11');
$Dec = $adminPlug->countUsersByYearAndMonth($thisYear, '12');

if(isset($_GET['areaChart']) && $_GET['areaChart'] == 'prevYear')
{
// PREVIOUS YEAR!!!
$Jan = $adminPlug->countUsersByYearAndMonth($lastYear, '1');
$Feb = $adminPlug->countUsersByYearAndMonth($lastYear, '2');
$Mar = $adminPlug->countUsersByYearAndMonth($lastYear, '3');
$Apr = $adminPlug->countUsersByYearAndMonth($lastYear, '4');
$May = $adminPlug->countUsersByYearAndMonth($lastYear, '5');
$Jun = $adminPlug->countUsersByYearAndMonth($lastYear, '6');
$Jul = $adminPlug->countUsersByYearAndMonth($lastYear, '7');
$Aug = $adminPlug->countUsersByYearAndMonth($lastYear, '8');
$Sep = $adminPlug->countUsersByYearAndMonth($lastYear, '9');
$Oct = $adminPlug->countUsersByYearAndMonth($lastYear, '10');
$Nov = $adminPlug->countUsersByYearAndMonth($lastYear, '11');
$Dec = $adminPlug->countUsersByYearAndMonth($lastYear, '12');
}

// $fetchMonthlyUsers = $adminPlug->fetchMonthlyUsers();
// echo $fetchMonthlyUsers;
// die();


if(!isset($_SESSION['log']))
{
	header('Location: Login');
}else{
	$now = time(); // Checking the time now when home page starts.

	if ($now > $_SESSION['expire']) {
		session_destroy();
		header('Location: Login/index.php?status=expired');
	}
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Acacia Quiz Dashboard</title>
  <!-- base:css -->
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/feather/feather.css">
  <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/acacialogo_mini.png" />
</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
              <a class="navbar-brand brand-logo" href="index.html"><img src="images/acacia.png" alt="logo"/></a>
              <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/acacialogo_mini.png" alt="logo"/></a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
              <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                <span class="icon-menu"></span>
              </button>
              <ul class="navbar-nav mr-lg-2">
                <li class="nav-item nav-search d-none d-lg-block">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="search">
                        <i class="icon-search"></i>
                      </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Search Projects.." aria-label="search" aria-describedby="search">
                  </div>
                </li>
              </ul>
              <ul class="navbar-nav navbar-nav-right">

                <li class="nav-item dropdown d-flex mr-4 ">
                  <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
                    <i class="icon-cog"></i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                    <!-- <p class="mb-0 font-weight-normal float-left dropdown-header">Settings</p>
                    <a class="dropdown-item preview-item">               
                        <i class="icon-head"></i> Profile
                    </a> -->
                    <a class="dropdown-item preview-item" href="logout.php">
                        <i class="icon-circle-cross"></i> Logout
                    </a>
                  </div>
                </li>

              </ul>
              <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                <span class="icon-menu"></span>
              </button>
            </div>
          </nav>
    
    
    
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="user-profile">
          <div class="user-image">
            <img src="images/faces/dr_acacia.png">
          </div>
          <div class="user-name">
              Acacia Quiz Dashboard
          </div>
          <div class="user-designation">
              Admin
          </div>
        </div>
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php">
              <i class="icon-box menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/forms/questionnaire_edit.php">
              <i class="icon-file menu-icon"></i>
              <span class="menu-title">Edit Questionnaire</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="pages/blog_cms.php">
              <i class="icon-layout menu-icon"></i>
              <span class="menu-title">Post Blog</span>
            </a>
          </li>

          
          <li class="nav-item">
            <a class="nav-link" href="pages/blogs.php">
              <i class="icon-align-justify menu-icon"></i>
              <span class="menu-title">Blog List</span>
            </a>
          </li>

        </ul>
      </nav>
      
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3">
                      <h4 class="card-title">Area chart</h4>
                      <div class="dropdown">
                        <button class="btn btn-sm dropdown-toggle text-dark pt-0 pr-0" type="button" id="dropdownMenuSizeButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?php echo $year = isset($_GET['areaChart']) && $_GET['areaChart'] ==  'prevYear' ? $lastYear : $thisYear ?>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuSizeButton3">
                          <h6 class="dropdown-header"><a href="index.php?areaChart=thisYear"><?php echo $thisYear ?></a></h6>
                          <h6 class="dropdown-header"><a href="index.php?areaChart=prevYear"><?php echo $lastYear ?></a></h6>
                          <!-- THIS YEAR!! -->
                        <p id="Jan" style="display:none;"><?php echo $Jan ?></p>
                        <p id="Feb" style="display:none;"><?php echo $Feb ?></p>
                        <p id="Mar" style="display:none;"><?php echo $Mar ?></p>
                        <p id="Apr" style="display:none;"><?php echo $Apr ?></p>
                        <p id="May" style="display:none;"><?php echo $May ?></p>
                        <p id="Jun" style="display:none;"><?php echo $Jun ?></p>
                        <p id="Jul" style="display:none;"><?php echo $Jul ?></p>
                        <p id="Aug" style="display:none;"><?php echo $Aug ?></p>
                        <p id="Sep" style="display:none;"><?php echo $Sep ?></p>
                        <p id="Oct" style="display:none;"><?php echo $Oct ?></p>
                        <p id="Nov" style="display:none;"><?php echo $Nov ?></p>
                        <p id="Dec" style="display:none;"><?php echo $Dec ?></p>
                        </div>
                      </div>
                      </div>
                      <p>This Area Chart shows how many users took the quiz each month of the year.</p>
                      <canvas id="areaChart"></canvas>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <p id="lessThan30" style="display:none;"><?php echo $resultLessThan30 ?></p>
                      <p id="30To50" style="display:none;"><?php echo $result30To50 ?></p>
                      <p id="50To70" style="display:none;"><?php echo $result50To70 ?></p>
                      <p id="GreaterThan70" style="display:none;"><?php echo $fetchResultGreaterThan70 ?></p>
                      <h4 class="card-title">Bar chart</h4>
                      <p>This Bar Chart shows the total number of users per each score range.</p>
                      <canvas id="barChart"></canvas>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
            <div class="col-xl-12 grid-margin-lg-5 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                      <h4 class="card-title">All Users</h4>
                      <div class="table-responsive mt-3">
                        <table class="table table-header-bg">
                          <thead>
                            <tr>
                              <th>
                                  No_
                              </th>
                              <th>
                                  Username
                              </th>
                              <th>
                                  Phone Number
                              </th>
                              <th>
                                  Score Bar
                              </th>
                              <th>
                                  Score
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                          <?php
								// $user = $adminPlug->fetchAllUsersDashboard();
								while($userRow = mysqli_fetch_array($fetchAllUsersDashboard))
										{
                          ?>
                            <tr>
                              <td>
                                <i class="flag-icon flag-icon-us mr-2" title="us" id="us"></i> <?php echo $userRow['id'] ?> 
                              </td>
                              <td>
                                <i class="flag-icon flag-icon-us mr-2" title="us" id="us"></i> <?php echo $userRow['userName'] ?> 
                              </td>
                              <td>
                              <?php echo $userRow['phone_num'] ?>
                              </td>
                              <!-- <td>
                                <div class="text-success"><i class="icon-arrow-up mr-2"></i><?php echo $userRow['results'] ?>%</div>
                              </td> -->
                              <td>
                                <div class="row">
                                  <div class="col-sm-10">
                                    <div class="progress">
                                      <div class="progress-bar bg-info" role="progressbar" style="width: <?php echo $userRow['results'] ?>%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                  </div>
                                  <div class="col-sm-2">
                                  <?php echo $userRow['results'] ?>%
                                  </div>
                                </div>
                              </td>
                              
                            </tr>

                            <?php
                    }
                            ?>
                            
                          </tbody>
                        </table>
                      </div>
                      <a href="table.php">
                      <button type="button" class="btn btn-secondary view-all-btn">View All</button>
                      </a>
                  </div>
                </div>
              </div>
            </div>

          <!-- <div class="row">
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Doughnut chart</h4>
                  <p id="male">10</p>
                  <p id="female">90</p>
                  <canvas id="doughnutChart"></canvas>
                </div>
              </div>
            </div>
          </div> -->
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © Acacia Health Insurnce</span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="js/chart.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
