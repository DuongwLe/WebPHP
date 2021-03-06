<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>AWEB Computer Techonology</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <!-- Favicon -->

        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="http://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="shortcut icon" type="image/x-icon" href="img/logo-title.jpg">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/dang_nhap.css">
        <!-- Harasocial --><script src="https://assets.harafunnel.com/widget/113018741175659.js" async="async"></script>
    </head>

    <body>    
        <!-- Top bar Start -->
        <div class="top-bar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <i class="fa fa-envelope"></i>
                        support@email.com
                    </div>
                    <div class="col-sm-6">
                        <i class="fa fa-phone-alt"></i>
                        Hotline: 1900 1009
                    </div>
                </div>
            </div>
        </div>
        <!-- Top bar End -->
        
        <!-- Nav Bar Start -->
        <div class="nav">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto">
                            <a href="index.php" class="nav-item nav-link active">TRANG CH???</a>
                            <a href="laptop_moi.php" class="nav-item nav-link">LAPTOP M???I</a>
                            <a href="laptop_do_hoa_gaming.php" class="nav-item nav-link">LAPTOP ????? H???A - GAMING</a>
                            <a href="laptop_van_phong.php" class="nav-item nav-link">LAPTOP M???NG NH??? CAO C???P</a>
                            <a href="linh_kien_laptop.php" class="nav-item nav-link">LINH KI???N LAPTOP</a>
                            <a href="he_thong_cua_hang.php" class="nav-item nav-link">H??? TH???NG C???A H??NG</a>                           
                        </div>                   
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">T??i kho???n</a>
                                <div class="dropdown-menu">
                                    <a href="dang_nhap.php" class="dropdown-item" >????ng nh???p</a>
                                    <a href="dang_ky.php" class="dropdown-item" >????ng k??</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Nav Bar End -->      
        
        <!-- Bottom Bar Start -->
        <div class="bottom-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="index.php">
                                <img title="AWEB Computer Technology" src="img/logo-AWeb.png" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <form id="product-search" method="GET" action="find.php">
                            <div class="search">
                                 <input type="text" placeholder="Nh???p t??? kh??a t??m ki???m" name="q" >
                                 <button type="submit" name="submit"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-3">
                        <div class="user">
                            <a href="phan_hoi.php" class="btn wishlist">
                                <i class="fas fa-comments"></i>
                            </a>
                            <a href="gio_hang.php" class="btn cart">
                                <i class="fa fa-shopping-cart"></i>
                               <span>(<?php if(isset($_SESSION['cart']))
                                                {
                                                    echo count($_SESSION['cart']);
                                                }
                                             else
                                             {
                                                 echo "0";
                                             }
                                                ; ?>)</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Bar End --> 
        
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php">TRANG CH???</a></li>
                    <li class="breadcrumb-item active">????ng nh???p</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
       <div id="wrapper">
        <form action="thuc_hien_dang_nhap.php" method="POST" id="form_login" onsubmit="return check_nhap_information();">
             <h1 id="form_heading">????ng nh???p</h1>
             <div id="form_group">
                 <i class="far fa-user"></i>
                 <input class="form_input" id="txtUserName" type="text" placeholder="T??n ????ng nh???p" name="txtUserName">
             </div>
             <div id="form_group">
                 <i class="fas fa-key"></i>
                 <input class="form_input" id="txtPassWord" type="password" placeholder="M???t kh???u" name="txtPassWord">
                 <div id="eye">
                     <i class="fas fa-eye"></i>
                 </div>
             </div>
             <input type="submit" class="form_submit" value="????NG NH???P">
        </form>
       </div>
        
        <!-- Footer Start -->
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>AWEB COMPUTER TECHNOLOGY</h2>
                            <div class="contact-info">
                                <p><i class="fa fa-map-marker"></i>12 Ch??a B???c, ?????ng ??a, HN</p>
                                <p><i class="fa fa-envelope"></i>email@example.com</p>
                                <p><i class="fa fa-phone"></i>1900 1009</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>TIN T???C</h2>
                            <div class="contact-info">
                                <div class="social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                    <a href=""><i class="fab fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>CH??NH S??CH CHUNG</h2>
                            <ul>
                                <li><a href="chinh_sach_quy_dinh_chung.php">Ch??nh s??ch, quy ?????nh chung</a></li>
                                <li><a href="chinh_sach_bao_hanh.php">Ch??nh s??ch b???o h??nh</a></li>
                                <li><a href="chinh_sach_hang_chinh_hang.php">Ch??nh s??ch h??ng ch??nh h??ng</a></li>
                                <li><a href="chinh_sach_van_chuyen.php">Ch??nh s??ch v???n chuy???n</a></li>
                                <li><a href="bao_mat_thong_tin_khach_hang.php">B???o m???t th??ng tin</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>H??? TR??? KH??CH H??NG</h2>
                            <ul>
                                <li><a href="huong_dan_mua_hang_truc_tuyen.php">H?????ng d???n mua h??ng tr???c tuy???n</a></li>
                                <li><a href="huong_dan_thanh_toan.php">H?????ng d???n thanh to??n</a></li>
                                <li><a href="phan_hoi.php">G??p ??, khi???u n???i</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div class="row payment align-items-center">
                    <div class="col-md-6">
                        <div class="payment-method">
                            <h2>We Accept:</h2>
                            <img src="img/payment-method.png" alt="Payment Method" />
                            <img src="img/logo-momo.png" alt="Payment Method" />
                            <img src="img/logo-vnpay.png" alt="Payment Method" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="payment-security">
                            <h2>Secured By:</h2>
                            <img src="img/godaddy.svg" alt="Payment Security" />
                            <img src="img/norton.svg" alt="Payment Security" />
                            <img src="img/ssl.svg" alt="Payment Security" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->   
        
        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>
        
        <!-- Template Javascript -->
        <script src="js/main.js"></script>
        <script type="text/javascript" src="js/dang_nhap.js"></script>
        <script type="text/javascript">
        function check_nhap_information() {
            var username = document.getElementById('txtUserName').value;
            var password = document.getElementById('txtPassWord').value;

            //Ki???m tra xem ?? username ???? nh???p ????? th??ng tin ch??a
            if (username == '') {
                alert('B???n ch??a nh???p USERNAME');
                return false;
            }

            //Ki???m tra xem ?? password ???? nh???p th??ng tin ch??a
            if (password == '') {
                alert('B???n ch??a nh???p PASSWORD')
                return false;
            }

            //Khi nh???p ????? th??ng tin th?? ng?????i d??ng s??? ???????c chuy???n ?????n trang x??? l?? ????ng nh???p
            return true;
        }
        </script>
    </body>
</html>
