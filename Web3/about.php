<?php

include 'configs/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="shortcut icon" href="templates/uploaded_img/system_img/logo.png">
   <title>Thông tin</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="templates/css/style.css">
   <style>
      /* CSS */
      .star {
         display: flex;
         justify-content: center;
         align-items: center;
         width: 100%;
         vertical-align: middle;
      }

      .star label {
         height: 25px;
         width: 25px;
         position: relative;
         cursor: pointer;
         padding: 0 5px;
         display: flex;
         justify-content: center;
         align-items: center;
      }

      .star label:after {
         transition: all 1s ease-out;
         position: absolute;
         content: "★";
         color: orange;
         font-size: 32px;
      }

      .star input:checked+label:after,
      .star input:checked~label:after {
         content: "★";
         color: gold;
         text-shadow: 0 0 10px gold;
      }
   </style>

</head>

<body>

   <!-- header section starts  -->
   <?php include 'configs/user_header.php'; ?>
   <!-- header section ends -->

   <div class="heading">
      <h3>Thông tin</h3>
      <p><a href="home.php">Trang chủ</a> <span> / thông tin</span></p>
   </div>

   <!-- about section starts  -->

   <section class="about">

      <div class="row">


         <div class="content">
            <h3>Một số thông tin về chúng tôi</h3>

            <div class="image">
               <img src="templates\uploaded_img\system_img\thiet-ke-quan-tra-sua (1).jpg" alt="">
            </div>
            <p>Chào mừng quý khách đến với TeaBill - điểm đến trà sữa độc đáo và thú vị tại trung tâm thành phố! Được thành lập với sứ mệnh đem đến sự độc đáo và tinh tế trong thế giới trà sữa, chúng tôi tự hào là địa chỉ lý tưởng cho những tín đồ yêu thưởng thức hương vị đặc biệt.

               Chất Lượng Phục Vụ:
               Với đội ngũ nhân viên nhiệt tình và chuyên nghiệp, TeaBill cam kết mang đến dịch vụ phục vụ vô cùng chu đáo và thân thiện. Chúng tôi luôn lắng nghe và đáp ứng mọi nhu cầu của khách hàng, tạo nên không gian thoải mái và ấm cúng để bạn có thể thư giãn và thưởng thức trà sữa một cách trọn vẹn.

               Khuyến Mãi:
               Đặc biệt, để tri ân sự ủng hộ của quý khách, chúng tôi thường xuyên tổ chức các chương trình khuyến mãi hấp dẫn. Những ưu đãi đặc biệt này không chỉ giúp bạn tiết kiệm mà còn mang lại cơ hội thưởng thức nhiều loại trà sữa hấp dẫn với giá ưu đãi.

               TeaBill - nơi gặp gỡ và chia sẻ hương vị, chúng tôi hy vọng sẽ trở thành điểm đến yêu thích của bạn. Hãy đến và trải nghiệm ngay hôm nay để khám phá thêm về thế giới trà sữa độc đáo của chúng tôi!
            <div class="image">
               <img src="templates\uploaded_img\system_img\tra-sua-chin-can-tho-1.jpg" alt="">
            </div>

            </p>
            <h3>Địa chỉ</h3>
            <p>TeaBill có địa chỉ tại trung tâm thành phố, giữa bối cảnh sôi động và thuận lợi cho việc gặp gỡ bạn bè hay họp nhóm. Chúng tôi mong muốn trở thành điểm hẹn lý tưởng cho cộng đồng yêu trà sữa.</p>
            <div class="">
               <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3926.1656305853667!2d105.96063889999999!3d10.248222199999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTDCsDE0JzUzLjYiTiAxMDXCsDU3JzM4LjMiRQ!5e0!3m2!1svi!2s!4v1701776991705!5m2!1svi!2s" width="800" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <h3>Sản Phẩm và Dịch Vụ:</h3>
            <p> Tại TeaBill, chúng tôi tự tin mang đến cho khách hàng những trải nghiệm trà sữa tuyệt vời nhất. Chúng tôi kết hợp những hương vị tinh tế từ các nguyên liệu tươi ngon nhất, tạo nên những ly trà sữa độc đáo và thơm ngon. Khách hàng có thể lựa chọn từ danh sách đa dạng các loại trà và sữa, tùy chọn đường và đá theo khẩu vị cá nhân.
            </p>
            <a href="menu.php" class="btn">Xem thực đơn</a>
         </div>

      </div>

   </section>

   <!-- about section ends -->

   <!-- steps section starts  -->

   <section class="steps">

      <h1 class="title">Các bước đặt hàng</h1>

      <div class="box-container">

         <div class="box">
            <img src="templates/uploaded_img/system_img/step-1.png" alt="">
            <h3>Chọn đơn hàng</h3>
            <p>Tìm kiếm sản phẩm muốn mua trên trang web hoặc ứng dụng của cửa hàng.</p>
         </div>

         <div class="box">
            <img src="templates/uploaded_img/system_img/step-2.png" alt="">
            <h3>Giao hàng nhanh</h3>
            <p>Giao hàng nhanh chóng, an toàn đến tận nơi, sản phẩm nguyên vẹn.</p>
         </div>

         <div class="box">
            <img src="templates/uploaded_img/system_img/step-3.png" alt="">
            <h3>Thưởng thức</h3>
            <p>Kiểm tra sản phẩm khi nhận hàng và tận hưởng.</p>
         </div>

      </div>

   </section>

   <!-- steps section ends -->

   <!-- reviews section starts  -->
   <?php
   // Truy vấn tất cả các đánh giá từ cơ sở dữ liệu
   $select_reviews = $conn->prepare("SELECT * FROM `product_reviews` WHERE status='active' ORDER BY created_at DESC");
   $select_reviews->execute();
   ?>
   <section class="reviews">

      <h1 class="title">Đánh giá của khách hàng</h1>

      <div class="swiper reviews-slider">

         <div class="swiper-wrapper">
            <?php
            while ($row = $select_reviews->fetch(PDO::FETCH_ASSOC)) {
               // Lấy tên khách hàng từ bảng user dựa trên user_id
               $select_user = $conn->prepare("SELECT name FROM `users` WHERE user_id = ?  ");
               $select_user->execute([$row['user_id']]);

               $user_row = $select_user->fetch(PDO::FETCH_ASSOC);
            ?>
               <div class="swiper-slide slide">
                  <?php
                  // Sinh số ngẫu nhiên từ 1 đến 9
                  $randomNumber = rand(1, 9);

                  // Đường dẫn đầy đủ đến thư mục chứa hình ảnh
                  $imageDirectory = 'templates/uploaded_img/review_img/';

                  // Tạo đường dẫn đầy đủ cho hình ảnh ngẫu nhiên
                  $imagePath = $imageDirectory . $randomNumber . '.png';
                  ?>

                  <img src="<?php echo $imagePath; ?>" alt="">
                  <h3>Khách hàng: <?= $user_row['name']; ?></h3>



                  <div class="star">
                     <?php
                     // Lấy giá trị rating từ cột 'rating' của dòng hiện tại
                     $rating = $row['rating'];

                     // Loop qua giá trị rating và tạo mã HTML tương ứng
                     for ($i = 0; $i < $rating; $i++) {
                        echo '<label for="r' . $i . '"></label>';
                     }
                     ?>
                  </div>

                  <p>Nhận xét: <?= $row['comment']; ?></p>
               </div>
            <?php
            }
            ?>
         </div>

         <div class="swiper-pagination"></div>

      </div>

   </section>

   <!-- reviews section ends -->



















   <!-- footer section starts  -->
   <?php include 'configs/user_footer.php'; ?>
   <!-- footer section ends -->=






   <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

   <!-- custom js file link  -->
   <script src="templates/js/script.js"></script>

   <script>
      var swiper = new Swiper(".reviews-slider", {
         loop: true,
         grabCursor: true,
         spaceBetween: 20,
         pagination: {
            el: ".swiper-pagination",
            clickable: true,
         },
         breakpoints: {
            0: {
               slidesPerView: 1,
            },
            700: {
               slidesPerView: 2,
            },
            1024: {
               slidesPerView: 3,
            },
         },
      });
   </script>

</body>

</html>