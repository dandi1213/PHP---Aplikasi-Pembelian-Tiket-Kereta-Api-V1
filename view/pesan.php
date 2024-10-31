<html>

<head>
    <title>Locket Pesan</title>
    <link rel="stylesheet" href="../public/style/pesan.css?v=<?php echo time(); ?>">
</head>

<body>
    <header>
        <nav>
            <h1>Layanan Tiket</h1>
            <div class="navbar">
                <a href="../view/home.php">Home</a>
                <a href="../view/Jadwal.php">Jadwal</a>
                <a href="../view/pesan.php">Pesan</a>
                <a href="../index.php">Logout</a>
            </div>
        </nav>
    </header>
    <div class="formulir">
        <form action="" method="post">
            <h1>Formulir Pemesanan Tiket</h1>
            <div class="data_">
                <label for="nama">Nama&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; :</label>
                <input type="text" name="nama" placeholder="Masukan Nama">
            </div>
            <hr>
            <div class="data_">
                <label for="no_identitas">No Identitas&emsp;&emsp;&emsp;&emsp;&ensp; :</label>
                <input type="text" name="no_identitas" placeholder="Masukan No Identitas">
            </div>
            <hr>
            <div class="data_">
                <label for="no_kursi">No Kursi&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&ensp; :</label>
                <input type="number" name="no_kursi" id="no_kursi">
            </div>
            <hr>
            <div class="data_">
                <label for="tgl_keberangkatan">Tanggal Keberangkatan :</label>
                <input type="date" name="tgl_keberangkatan" id="tgl_keberangkatan">
            </div>
            <hr>
            <div class="data_">
                <label for="tujuan_keberangkatan">Tujuan Keberangkatan &ensp;:</label>
                <input type="text" name="tujuan_keberangkatan">
            </div>
            <hr>
            <button colspan="center" type="submit" name="pesan">Pesan</button>
        </form>
    </div>
</body>

</html>
<?php
include_once("../config.php");
if (isset($_POST['pesan'])) {
    $nama = $_POST['nama'];
    $identitas = $_POST['no_identitas'];
    $kursi = $_POST['no_kursi'];
    $tanggal = $_POST['tgl_keberangkatan'];
    $tujuan = $_POST['tujuan_keberangkatan'];
    $sql = mysqli_query($mysqli, "INSERT INTO tb_pesanan (nama,no_identitas,no_kursi,tgl_keberangkatan,tujuan_keberangkatan) VALUES ('$nama','$identitas','$kursi','$tanggal','$tujuan')");
    if($sql){
        header("Location:../view/bording.php");
    }else{
        echo "Gagal insert data";
    }
}
?>