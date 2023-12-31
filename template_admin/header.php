<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nature Resources || Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="shortcut icon" href="../img/logo2.png" type="image/x-icon">
  </head>
  <body class="d-flex flex-column min-vh-100">
  <nav class="navbar navbar-expand-lg" style="background-color: #E7DBBE;">
    <div class="container">
      <a class="navbar-brand d-flex align-items-center" href="template_admin.php?halaman=index_admin">
        <img src="../img/logo2.png" alt="" width="50px" style="margin-right: 10px;">
        <h4 style="margin-bottom: 0;"></h4>
        <span class="ms-2" style="font-size: 14px; color: #777;"></span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link text-black" href="template_admin.php?halaman=index_admin">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-black" href="template_admin.php?halaman=index_category">Category</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-black" href="template_admin.php?halaman=index_article">Article</a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown ml-auto">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <?php echo $_SESSION['nama']; ?>
            </a>
            <ul class="dropdown-menu">
              <li>
                  <form action="#" method="post">
                      <button type="submit" name="logout" onclick=" return confirm('Apakah Anda Yakin Akan Keluar?') " class="dropdown-item">Logout</button>
                  </form>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>

<?php
  if (isset($_POST['logout'])) {
        session_destroy();
        header("Location:../template_admin/login.php");
  }
?>