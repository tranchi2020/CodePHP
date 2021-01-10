    <?php
require_once __DIR__ . "/autoload/autoload.php";
$sum = 0;
if (!isset($_SESSION['cart']) | count($_SESSION['cart']) == 0) {
    echo " <script> alert(' Giỏ hàng trống !'); location.href = 'index.php' </script> ";
}

?>
   <?php require_once __DIR__ . "/layouts/header.php";?>
     <section class="shock-product">
        <div class="container">
           <div class="text-center" style="padding-top: 70px; padding-bottom: 20px">
            <?php if (isset($_SESSION['success'])): ?>
                    <div class="alert alert-success">
                        <h2><?php echo $_SESSION['success'];unset($_SESSION['success']) ?></h2>
                    </div>
                <?php endif?>
                 <?php if (isset($_SESSION['error'])): ?>
                    <div class="alert alert-danger">
                        <h2><?php echo $_SESSION['error'];unset($_SESSION['error']) ?></h2>
                    </div>
                <?php endif?>
            <h3>GIỎ HÀNG CỦA BẠN</h3>
            <?php if (isset($_SESSION['am'])): ?>
            <div class="alert alert-danger" style="width:400px;margin:0 auto"> Số lượng phải nhập số dương </div>
            <?php unset($_SESSION['am'])?>
            <?php endif?>
           </div>
          <table class="table">
              <thead>
                <tr>
                  <th>STT</th>
                  <th>Tên sản phẩm</th>
                  <th>Hình ảnh</th>
                  <th>Số lượng</th>
                  <th>Giá</th>
                  <th>Tổng tiền</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php $stt = 1;foreach ($_SESSION['cart'] as $key => $value): ?>
                        <tr>
                          <th><?php echo $stt ?></th>
                          <td><?php echo $value['name']; ?></td>
                          <td>
                              <img src="<?php echo uploads() ?>product/<?php echo $value['thunbar']; ?>" width="80px" height="80px">
                          </td>
                          <td>
                              <input style="width: 50px" type="number" name="qty" class="qty"
                              value="<?php echo $value['qty'] ?>">
                                <?php if (isset($_SESSION['err'][$key])): ?>
                                  <p style="color: red">Số lượng trong kho không đủ !!</p>
                                   <p style="color: red">Số lượng tối đa: <?php echo $value['number']; ?></p>
                                   <?php unset($_SESSION['err'][$key])?>
                              <?php endif?>
                          </td>
                          <td><?php echo fomatPrice($value['price']) ?>đ</td>
                           <td><?php echo fomatPrice($value['qty'] * $value['price']) ?>đ</td>
                          <td>
                              <a href="xoa-gio-hang.php?key=<?php echo $key ?>" class="btn btn-xs btn-danger"><i class="fa fa-times"></i>Xoá</a>
                              <a href="" class="btn btn-xs btn-primary updatecart"  data-key=<?php echo $key; ?> ><i class="fa fa-refresh"></i>Cập nhật</a>
                          </td>
                      </tr>

                      <?php $sum += $value['price'] * $value['qty'];
                    $_SESSION['tongtien'] = $sum;?>
                 <?php $stt++;endforeach?>
              </tbody>
          </table>
          <hr>
          <div style="margin-left: 800px" class="col-md-4">
              <ul class="list-group">
                <li class="list-group-item">
                    <h4>Thông tin đơn hàng</h4>
                </li>
                <li class="list-group-item">
                    <span class="padge">
                         Số tiền:
                        <?php echo fomatPrice($_SESSION['tongtien']) ?>đ
                    </span>
                </li>
                <li class="list-group-item">
                    <span class="padge">
                         VAT:
                        <?php echo VAT($_SESSION['tongtien']); ?> %
                    </span>
                </li>

                 <li class="list-group-item">
                    <span class="padge">
                         Tổng tiền thanh toán:
                        <?php
                          echo fomatPrice($_SESSION['total'] = ($_SESSION['tongtien'] * (VAT($_SESSION['tongtien']) + 100) / 100));
                        ?> đ
                    </span>
                </li>
                <li class="list-group-item">
                    <a href="index.php" class="btn btn-primary">Tiếp tục mua hàng</a>
                    <a href="thanh-toan.php" class="btn btn-primary">Thanh toán</a>
                </li>
              </ul>
          </div>
        </div>
    </section>
    <?php require_once __DIR__ . "/layouts/footer.php";?>
