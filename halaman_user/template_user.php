<?php

require_once "../template_user/header.php";

if( isset($_GET['halaman']) ){
    $halaman = $_GET['halaman'];
    if( file_exists("$halaman.php")){
        require_once "$halaman.php";
    } else {
        require_once "404.php";
    }
}

require_once "../template_user/footer.php";