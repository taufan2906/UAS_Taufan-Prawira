<div class="col py-3">
    <div class="row justify-content-center">
        <div class="col-md-10">
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
            <h1 class="text-center">Selamat Datang Admin</h1>
            <div class="row">
                <div class="col-md-6">
                    <div class="card text-center">
                        <div class="card-body"> 
                            <h4>Jumlah Category Dibuat</h4>
                            <?php
                                require '../koneksi.php';
                                $sql = mysqli_query($conn,"SELECT count(*) as total FROM category");
                                $row = mysqli_fetch_assoc($sql);
                            ?>
                            <h5><?php echo $row['total'] ?></h5>
                            <a href="template_admin.php?halaman=index_article" class="btn btn-primary">Category</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card text-center">
                        <div class="card-body"> 
                            <h4>Jumlah Article Dibuat</h4>
                            <?php
                                require '../koneksi.php';
                                $sql = mysqli_query($conn,"SELECT count(*) as total FROM article");
                                $row = mysqli_fetch_assoc($sql);
                            ?>
                            <h5><?php echo $row['total'] ?></h5>
                            <a href="template_admin.php?halaman=index_article" class="btn btn-primary">Article</a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>

