<?php
include '../configs/connect.php';
session_start();
$admin_id = $_SESSION['admin_id'];
if (!isset($admin_id)) {
    header('location:admin_login.php');
};

$message = array(); // Khởi tạo mảng để lưu thông báo lỗi

if (isset($_POST['add_slider'])) {
    $caption = $_POST['caption'];
    $caption = filter_var($caption, FILTER_SANITIZE_STRING);
    $name = $_POST['name'];
    $name = filter_var($name, FILTER_SANITIZE_STRING);

    $image = $_FILES['image']['name'];
    $image = filter_var($image, FILTER_SANITIZE_STRING);
    $image_size = $_FILES['image']['size'];
    $image_tmp_name = $_FILES['image']['tmp_name'];
    $image_folder = '../templates/uploaded_img/slider_img/' . $image;

    $select_slider = $conn->prepare("SELECT * FROM `slider` WHERE name = ?");
    $select_slider->execute([$name]);

    if ($select_slider->rowCount() > 0) {
        move_uploaded_file($image_tmp_name, $image_folder);
        $update_slider = $conn->prepare("UPDATE `slider` SET caption = ?, img = ? WHERE name = ?");
        $update_slider->execute([$caption, $image, $name]);

        $message[] = 'Hình ảnh đã tồn tại và đã được cập nhật!';
    } else {
        if ($image_size > 2000000) {
            $message[] = 'Image size is too large';
        } else {
            move_uploaded_file($image_tmp_name, $image_folder);

            $insert_slider = $conn->prepare("INSERT INTO `slider`(caption, name, img) VALUES(?,?,?)");
            $insert_slider->execute([$caption, $name, $image]);

            $message[] = 'Đã cập nhật hình ảnh mới!';
        }
    }
}

if (isset($_GET['delete'])) {
    $delete_id = $_GET['delete'];
    $delete_slider_image = $conn->prepare("SELECT * FROM `slider` WHERE id = ?");
    $delete_slider_image->execute([$delete_id]);
    $fetch_delete_image = $delete_slider_image->fetch(PDO::FETCH_ASSOC);
    unlink('../templates/uploaded_img/slider_img/' . $fetch_delete_image['image']);
    $delete_slider = $conn->prepare("DELETE FROM `slider` WHERE id = ?");
    $delete_slider->execute([$delete_id]);
    header('location:slider.php');
}

// Điều kiện kiểm tra nút chỉnh sửa
if (isset($_POST['update_slider'])) {
    $edit_id = $_POST['edit_id'];
    $edit_caption = $_POST['edit_caption'];
    $edit_caption = filter_var($edit_caption, FILTER_SANITIZE_STRING);
    $edit_name = $_POST['edit_name'];
    $edit_name = filter_var($edit_name, FILTER_SANITIZE_STRING);
    $edit_image = $_FILES['edit_image']['name'];
    $edit_image = filter_var($edit_image, FILTER_SANITIZE_STRING);
    $edit_image_size = $_FILES['edit_image']['size'];
    $edit_image_tmp_name = $_FILES['edit_image']['tmp_name'];
    $edit_image_folder = '../templates/uploaded_img/slider_img/' . $edit_image;

    $update_slider = $conn->prepare("UPDATE `slider` SET caption = ?, name = ?, img = ? WHERE id = ?");
    $update_slider->execute([$edit_caption, $edit_name, $edit_image, $edit_id]);

    $message[] = 'Hình ảnh đã được cập nhật!';
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../templates/uploaded_img/admin_img/user.png">
    <title>Hình ảnh</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/admin_style.css">

</head>

<body>

    <?php include '../configs/admin_header.php' ?>
    <?php include '../configs/slider.php' ?>
    <!-- add slider section starts  -->

    <section class="add-category">

        <form action="" method="POST" enctype="multipart/form-data">
            <h3>Thêm hình ảnh</h3>
            <input type="text" required placeholder="Tiêu đề" name="caption" maxlength="100" class="box">
            <input type="text" required placeholder="Tên món ăn" name="name" maxlength="100" class="box">
            <input type="file" name="image" class="box" accept="image/jpg, image/jpeg, image/png, image/webp" required>
            <input type="submit" value="Thêm danh mục" name="add_slider" class="btn">
        </form>
    </section>


    <script src="../templates/js/admin_script.js"></script>

</body>

</html>