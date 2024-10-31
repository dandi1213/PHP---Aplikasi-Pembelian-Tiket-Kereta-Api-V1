<?php
     include_once ("../config.php");
     $sql=mysqli_query($mysqli,"SELECT * FROM tb_jadwal");
?>
<html>

<head>
    <title>Jadwal Keberangkatan</title>
    <link rel="stylesheet" href="../public/style/Jadwal.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=League Spartan|">
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
    <div class="container">
        <div class="head">
            <img src="../public/img/background_kereta.jpg" alt="">
        </div>
        <div class="table">
            <table style="width=100%">
                <tr>
                    <th>Kerata Api</th>
                    <th>Nomor KA</th>
                    <th>Tujuan</th>
                    <th>Berangkat</th>
                    <th>Foto</th>
                    <th>Keterangan</th>
                </tr>
                <?php
                     while($data=mysqli_fetch_array($sql)){
                        echo "<tr>";
                            echo "<td>".$data['kerata_api']."</td>";
                            echo "<td>".$data['nomor_ka']."</td>";
                            echo "<td>".$data['tujuan']."</td>";
                            echo "<td>".$data['berangkat']."</td>";
                            echo "<td>".$data['foto']."</td>";
                            echo "<td>".$data['keterangan']."</td>";
                        echo "</tr>";
                     }
                ?>
            </table>
        </div>
    </div>
</body>

</html>