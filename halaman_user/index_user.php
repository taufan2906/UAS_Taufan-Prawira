<div class="container p-4">
    <div class="row justify-content-center">
        <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
                <div class="carousel-item active">
                <img src="https://awsimages.detik.net.id/community/media/visual/2022/03/31/tersesat-di-hutan-amazon-1.jpeg?w=650&q=80" class="d-block w-100" alt="..." style="height: 500px;">
                </div>
                <div class="carousel-item">
                <img src="https://media.istockphoto.com/id/1219972020/id/foto/hutan-amazon-hijau-lebat-hutan-hujan.jpg?s=612x612&w=0&k=20&c=wQ0bqSen4ThOTdixo3ssUr0JISs2RbIda3hXz9-noUc=" class="d-block w-100" alt="..." style="height: 500px;">
                </div>
                <div class="carousel-item">
                <img src="https://www.balisafarimarinepark.com/wp-content/uploads/2022/12/hutan2.jpg" class="d-block w-100" alt="..." style="height: 500px;">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="row justify-content-center m-3">
        <h2 class="text-center">Category Article</h2>
        <?php
            require '../koneksi.php';
            $sql = mysqli_query($conn, "SELECT * FROM category LIMIT 0,4");
            while($data = mysqli_fetch_assoc($sql)):
        ?>
        <div class="col-md-3">
            <div class="card">
                <div class="card-header">
                    <img src="../halaman_admin/gambar_category/<?php echo $data['gambar_category'] ?>" alt="" style="width: 210px;">
                </div>
                <div class="card-body">
                    <a href="template_user.php?halaman=detail_category&slug=<?php echo $data['slug_category'] ?>" style="text-decoration: none; color: black;"><p class="text-center"><?php echo $data['judul_category'] ?></p></a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-1">
            <a href="template_user.php?halaman=more_category" class="btn btn-success">More..</a>
        </div>
    </div>
        <hr>
    <div class="row justify-content-center m-3">
        <h2 class="text-center">Article</h2>
        <?php
            require '../koneksi.php';
            $sql = mysqli_query($conn, "SELECT * FROM article LIMIT 0,4");
            while($data = mysqli_fetch_assoc($sql)):
        ?>
        <div class="col-md-3">
            <div class="card">
                <div class="card-header">
                    <img src="../halaman_admin/gambar_article/<?php echo $data['gambar_article'] ?>" alt="" style="width: 210px;">
                </div>
                <div class="card-body">
                    <a href="template_user.php?halaman=detail_article&slug=<?php echo $data['slug_article'] ?>" style="text-decoration: none; color: black;"><p class="text-center"><?php echo $data['judul_article'] ?></p></a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-1">
            <a href="template_user.php?halaman=more_article" class="btn btn-success">More..</a>
        </div>
    </div>
</div>

