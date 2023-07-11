<div class="col py-3">
<div class="row justify-content-center">
    <div class="col-md-10">
    <div class="row justify-content-center m-3">
        <h2 class="text-center">Category Article</h2>
        <?php
            require '../koneksi.php';
            $sql = mysqli_query($conn, "SELECT * FROM category");
            while($data = mysqli_fetch_assoc($sql)):
        ?>
        <div class="col-md-3">
            <div class="card">
                <div class="card-header">
                    <img src="../halaman_admin/gambar_category/<?php echo $data['gambar_category'] ?>" alt="" style="width: 215px;">
                </div>
                <div class="card-body">
                    <a href="template_user.php?halaman=detail_category&slug=<?php echo $data['slug_category'] ?>" style="text-decoration: none; color: black;"><p class="text-center"><?php echo $data['judul_category'] ?></p></a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
    </div>
</div>
</div>