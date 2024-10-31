<html>

<head>
    <title>Pemesanan Ticket Kereta</title>
    <link rel="stylesheet" href="../public/style/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=League Spartan|">
</head>

<body>
    <div class="container">
        <div class="login">
            <img src="../public/img/Kereta_cepat.jpg" alt="">
            <form action="" method="post">
                <h1>AEC BAWAR EXPRESS</h1>
                <input style="" type="text" name="username" placeholder="Masukan Email">
                <input type="password" name="password" placeholder="Masukan Password">
                <select name="level" id="level">
                    <option value="admin">Admin</option>
                    <option value="user">User</option>
                </select>
                <button type="submit" name="login">Login</button>
                <div class="check">
                    <input type="checkbox" name="persyaratan" id="persyaratan" placeholder="Syarat dan Ketentuan">
                    <label for="persyaratan">Syarat dan Ketentuan</label>
                    <a href="../index.php">I Have Acount</a>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
<?php
if (isset($_POST['login'])) {
    include_once "../config.php";
    $username = $_POST['username'];
    $password = $_POST['password'];
    $level = $_POST['level'];
    $check = mysqli_query($mysqli, "SELECT * FROM tb_user WHERE username='$username'");
    if (mysqli_num_rows($check) > 0) {
        echo "username sudah terdaftar";
        header("Location:register.php");
    } else {
        if (!empty($level)) {
            $sql = mysqli_query($mysqli, "INSERT INTO tb_user (username,pass,tingkat) VALUES('$username','$password','$level')");
            header("Location:../index.php");
        }
    }
}
?>