  <footer class="footer">
        <div class="container">
            <div class="state">
                <div class="row-foot">
                    <ul>
                        <li class="foot-item-type-one">
                            <a href="#">Tìm hiểu về mua trả góp</a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Chính sách bảo hành</a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Chính sách đổi trả</a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Giao hàng & Thanh toán</a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Xem thêm</a>
                        </li>
                    </ul>
                </div>
                <div class="row-foot">
                    <ul>
                        <li class="foot-item-type-one">
                            <a href="#">Giới thiệu công ty</a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Tuyển dụng</a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Tìm siêu thị <span>(1808  shop)</span></a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Gửi góp ý, khiếu nại</a>
                        </li>
                        <li class="foot-item-type-one">
                            <a href="#">Xem bản mobile</a>
                        </li>
                    </ul>
                </div>
                <div class="row-foot">
                    <ul>
                        <li class="foot-item-type-two">
                            <p>Gọi mua hàng <a class="tel" href="tel:1800.1060">1800.1060</a> (7:30 - 22:30)</p>
                            <p>Gọi khiếu nại <a class="tel" href="tel:1800.1062">1800.1062</a> (8:00 - 21:30)</p>
                            <p>Gọi bảo hành <a class="tel" href="tel:1800.1064">1800.1064</a> (8:00 - 21:00)</p>
                            <p>Hỗ  trợ kỹ thuật <a class="tel" href="tel:1800.1763">1800.1763</a> (7:30 - 22:00)</p>
                        </li>
                    </ul>
                </div>
                <div class="row-foot">
                    <div class="social">
                        <div class="facebook">
                            <a href="#">
                                <i class="icontgdd-fb"></i>
                                <p class="social-sub">3.3tr</p>
                            </a>
                        </div>
                        <div class="youtube">
                            <a href="#">
                                <i class="icontgdd-yt"></i>
                                <p class="social-sub">567.2k</p>
                            </a>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
    </footer>
    <button id="back-to-top">&#x25b2;</button>
    <script>
        $(function() {
            $updatecart = $(".updatecart");
            $updatecart.click(function(e){
                e.preventDefault();
                $qty = $(this).parents("tr").find(".qty").val();
                $key = $(this).attr("data-key");
                $.ajax({
                    url: 'cap-nhat-gio-hang.php',
                    type: 'GET',
                    data: {'qty': $qty, 'key': $key },
                    success: function(data){

                        if(data == 1) {
                            alert("Cập nhật giỏ hàng thành công!");
                            location.href = 'gio-hang.php';
                        }
                        else if(data == 2) {
                            alert("Cập nhật giỏ hàng thất bại!");
                            location.href = 'gio-hang.php';
                        }
                        else if(data == 0) {
                            alert("Cập nhật giỏ hàng thất bại!");
                            location.href = 'gio-hang.php';
                        }
                    }
                });
            })
        })
    </script>
</body>
</html>
