<div class="col py-3">
    <div class="row justify-content-center text-center">
        <div class="col-md-8">
            <?php
                require '../koneksi.php';
                $slug = $_GET['slug'];
                $Sql = mysqli_query($conn, "SELECT * FROM article INNER JOIN admin ON article.admin_id = admin.admin_id INNER JOIN category ON article.category_id = category.category_id WHERE slug_article = '$slug'");
                $data = mysqli_fetch_assoc($Sql);
            ?>
            <h3><?php echo $data['judul_article'] ?></h3>
                <img src="../halaman_admin/gambar_article/<?php echo $data['gambar_article'] ?>" alt="" width="40%">
            <b><p style="text-align: left; margin-left: 270px; color: grey;">Author : <?php echo $data['nama'] ?></p></b>
            <b><p style="text-align: left; margin-left: 270px; color: grey;">Category : <?php echo $data['judul_category'] ?></p></b>
            <b><p style="text-align: left; margin-left: 270px; color: grey;">Created At : <?php echo $data['dibuat_pada'] ?></p></b>

            <p style="text-align: justify; margin-left: 100px; margin-right: 100px;"><?php echo $data['deskripsi_article'] ?></p>
        </div>
    </div>
</div>
