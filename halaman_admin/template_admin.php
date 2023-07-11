<?php
session_start();
if (!isset($_SESSION['nama'])) {
    echo "Anda Belum Login! Silahkan <a href='../template_admin/login.php'>Login</a>";
    die;
}

require_once "../template_admin/header.php";

if( isset($_GET['halaman']) ){
    $halaman = $_GET['halaman'];
    if( file_exists("$halaman.php")){
        require_once "$halaman.php";
    } else {
        require_once "404.php";
    }
}

require_once "../template_admin/footer.php";