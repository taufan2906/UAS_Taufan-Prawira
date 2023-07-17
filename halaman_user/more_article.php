<div class="col py-3">
<div class="row justify-content-center">
    <div class="col-md-10">
    <div class="row justify-content-center m-3">
        <h2 class="text-center">Article</h2>
        <?php
            require '../koneksi.php';
            $sql = mysqli_query($conn, "SELECT * FROM article");
            while($data = mysqli_fetch_assoc($sql)):
        ?>
        <div class="col-md-3 mb-3">
            <div class="card">
                <div class="card-header">
                <a href="template_user.php?halaman=detail_article&slug=<?php echo $data['slug_article'] ?>">
                    <img src="../halaman_admin/gambar_article/<?php echo $data['gambar_article'] ?>" alt="" style="width: 215px;">
                </div>
                <div class="card-body">
                    <a href="template_user.php?halaman=detail_article&slug=<?php echo $data['slug_article'] ?>" style="text-decoration: none; color: black;"><p class="text-center"><?php echo $data['judul_article'] ?></p></a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
    </div>
</div>
</div>