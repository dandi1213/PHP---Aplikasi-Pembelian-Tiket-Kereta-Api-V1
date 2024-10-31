<html>

<head>
    <title>Pemesanan Ticket Kereta</title>
    <link rel="stylesheet" href="public/style/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=League Spartan|">
</head>

<body>
    <div class="container">
        <div class="login">
            <img src="public/img/Kereta_cepat.jpg" alt="">
            <form action="" method="post">
                <h1>AEC BAWAH EXPRESS</h1>
                <input style="" type="text" name="username" placeholder="Masukan Email">
                <input type="password" name="password" placeholder="Masukan Password">
                <button type="submit" name="login">Login</button>
                <div class="check">
                    <input type="checkbox" name="persyaratan" id="persyaratan" placeholder="Syarat dan Ketentuan">
                    <label for="persyaratan">Syarat dan Ketentuan</label>
                    <a href="view/register.php">Not Have Acount</a>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
<?php
include_once "config.php";
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sql = mysqli_query($mysqli, "SELECT * FROM tb_user WHERE username='$username' AND pass='$password'");
    if (mysqli_num_rows($sql) > 0) {
        header("Location:view/home.php");
    } else {
        echo "tidak di temukan data";
    }
}
?>