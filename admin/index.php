

<?php 
    $open = "admin";
    require_once __DIR__. "/autoload/autoload.php";
    $category = $db->fetchAll("category");

    $sql = "select sum(number) as sum from product ";
    $number = $db ->fetchsql($sql);

    $sql1 = "select sum(pay) as sum from product ";
    $pay = $db ->fetchsql($sql1);

    $sql2 = "select sum(amount) as sum from transaction ";
    $total = $db ->fetchsql($sql2);
?>
<?php require_once __DIR__. "/layouts/header.php" ?>
    <div id="content-wrapper" class="d-flex flex-column">
           <div class="container-fluid">
     
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.html">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Home Page</li>
        </ol>
        <h1>Xin chào bạn đến với trang quản trị admin</h1>
        <hr>

   
          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Tổng quan</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Tải xuống bản ghi</a>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-4 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Sản phẩm nhập vào</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $number[0]['sum'] ?> sản phẩm</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-4 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Sản phẩm bán được</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo $pay[0]['sum'] ?> sản phẩm</div>
                        </div>
                      
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-4 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Tổng doanh thu</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo fomatPrice($total[0]['sum']) ?> VND</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            

          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">

              <!-- Project Card Example -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Dự án</h6>
                </div>
                <div class="card-body">
                  <h4 class="small font-weight-bold">Theo dõi doanh số <span class="float-right">40%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">Cơ sở dữ liệu khách hàng <span class="float-right">60%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">Chi tiết xuất chi <span class="float-right">80%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">Cài đặt tài khoản <span class="float-right">Hoàn thành!</span></h4>
                  <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-6 mb-4">

              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Phát triển website</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                  <p>Nếu bạn muốn phát triển trang web của cửa hàng hãy liên hệ với công ty chúng tôi </p>
                  <a target="_blank" rel="nofollow" href="https://undraw.co/">Liên hệ ngay &rarr;</a>
                </div>
              </div>

              <!-- Approach -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Công ty ABC</h6>
                </div>
                <div class="card-body">
                  <p class="mb-0">Công ty ABC của chúng tôi hân hạnh được mang đến cho admin và người dùng những trải nghiệm tuyệt vời nhất </p>
                </div>
              </div>

            </div>
          </div>
        </div>
     </div>
     <?php require_once __DIR__. "/layouts/footer.php" ?>
    </div>

