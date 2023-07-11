<?php

$conn = mysqli_connect('localhost','root','','uas_taufan_ihsan');

if (mysqli_connect_errno()) {
    echo "Koneksi Gagal".mysqli_connect_error($conn);
}