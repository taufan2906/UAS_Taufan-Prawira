<?php
    session_start();
    if (isset($_SESSION['nama'])) {
        header("Location:../halaman_admin/template_admin.php?halaman=index_admin");
    }else{
        require '../koneksi.php';
        if (isset($_POST['submit'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];

            $sql = mysqli_query($conn,"SELECT * FROM admin WHERE email = '$email'");
            $row = mysqli_fetch_assoc($sql);
            
            if ($email === $row['email']) {
                if ( password_verify($password, $row['password'])) {
                    $_SESSION['nama'] = $row['nama'];
                    $_SESSION['sukses'] = "Berhasil Login";
                    header("Location:../halaman_admin/template_admin.php?halaman=index_admin");
                }else{
                    $_SESSION['gagal'] = "Password Anda Salah"; 
                }
            }else{
                $_SESSION['gagal'] = "Email Anda Salah"; 
            }
            
        }
}

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="shortcut icon" href="../img/logo.png" type="image/x-icon">
    <style>
        .card{
            padding: 1.5em .5em .5em;
            border-radius: 2em;
            box-shadow: 0 5px 10px rgba(0,0,0,.2);
        }
    </style>
</head>
  <body style="background-color: #E7DBBE;">
    <div class="row mt-5 justify-content-center">
        <div class="col-md-5">
        <?php
            if (isset($_SESSION['gagal'])) :                
        ?>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <?php echo $_SESSION['gagal']?>
            <button type="button" class="btn-close" onclick="<?php unset($_SESSION['gagal']) ?>" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <?php
            endif;
        ?>
        <?php
            if (isset($_SESSION['sukses'])) :                
        ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <?php echo $_SESSION['sukses']?>
            <button type="button" class="btn-close" onclick="<?php unset($_SESSION['sukses']) ?>" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <?php
            endif;
        ?>
            <h3 class="text-center mt-2"><img src="../img/logo.png" alt="" width="100px"></h3>
            <div class="card bg-success">
                <h4 class="text-center text-white mb-3">Login Admin</h4>
                <div class="card">
                    <div class="row justify-content-center">
                        <div class="col-md-10">
                            <form action="#" method="post">
                                <div class="mb-3">
                                    <label for="">Email</label>
                                    <input type="email" name="email" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="">Password</label>
                                    <input type="password" name="password" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <button type="submit" name="submit" class="btn btn-success">Login</button>
                                </div>
                            </form>
                            <p>Belum Memiliki Akun Silahkan <a href="register.php">Register</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>
