<?php
    if (isset($_POST['hapus'])) {
        $id = $_POST['article_id'];

        require '../koneksi.php';
        $delete = mysqli_query($conn, "DELETE FROM article WHERE article_id = '$id'");

        if ($delete) {
            $_SESSION['sukses'] = "Berhasil Hapus Data";
        }
    }
?>
<div class="col py-3">
    <div class="row justify-content-center">
        <div class="col-md-6 mb-3">
            <form class="d-flex" method="GET">
                <input type="hidden" name="halaman" value="index_article">
                <input class="form-control me-2" type="text" name="cari" placeholder="Cari...">
                <button class="btn btn-outline-success" type="submit">Cari</button>
            </form>
        </div>
        <div class="col-md-9">
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
        <div class="card">
                <div class="card-header">
                    <div class="d-flex">
                        <div class="card-title text-primary">Article</div>
                        <div class="ms-auto">
                            <a href="template_admin.php?halaman=create_article" class="btn btn-primary">Tambah</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-stripped">
                        <tr>
                            <th>Nama Category</th>
                            <th>Nama Admin</th>  
                            <th>Judul Artikel</th>
                            <th>slug Artikel</th>
                            <th>Deskripsi Artikel</th>
                            <th>Di Tambahkan pada</th>
                            <th>Gambar Artikel</th>
                            <th>Action</th>
                        </tr>
                        <?php
                            require '../koneksi.php';
                            $batas = 5;
                            $halaman = isset($_GET['page'])?(int)$_GET['page'] : 1;
                            $halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;	
            
                            $previous = $halaman - 1;
                            $next = $halaman + 1;
                            
                            $data = mysqli_query($conn,"SELECT * FROM article");
                            $jumlah_data = mysqli_num_rows($data);
                            $total_halaman = ceil($jumlah_data / $batas);

                            if (isset($_GET['cari'])) {
                                $cari = $_GET['cari'];
                                $sql = mysqli_query($conn,"SELECT * FROM article INNER JOIN category ON article.category_id = category.category_id INNER JOIN admin ON article.admin_id = admin.admin_id  WHERE judul_article OR slug_article LIKE '%".$cari."%' limit $halaman_awal, $batas");
                            }else{
                                $sql = mysqli_query($conn,"SELECT * FROM article INNER JOIN category ON article.category_id = category.category_id INNER JOIN admin ON article.admin_id = admin.admin_id limit $halaman_awal, $batas");
                            }
                            while ($row = mysqli_fetch_assoc($sql)) :
                        ?>
                            <tr>
                                <td><?php echo $row['judul_category'] ?></td>
                                <td><?php echo $row['nama'] ?></td>
                                <td><?php echo $row['judul_article'] ?></td>
                                <td><?php echo $row['slug_article'] ?></td>
                                <td><?php echo $row['deskripsi_article'] ?></td>
                                <td><?php echo $row['dibuat_pada'] ?></td>
                                <td><img src="../halaman_admin/gambar_article/<?php echo $row['gambar_article'] ?>" style="width: 100px;"></td>
                                <td>
                                    <a href="template_admin.php?halaman=edit_article&id=<?php echo $row['article_id'] ?>" class="btn btn-sm btn-success">Edit</a>
                                    <form action="#" method="post">
                                        <input type="hidden" name="article_id" value="<?php echo $row['article_id'] ?>">
                                        <button type="submit" class="btn btn-sm btn-danger" name="hapus" onclick="return confirm('Apakah anda yakin akan menghapus data ini?')">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        <?php
                            endwhile;
                        ?>
                    </table>
                    <nav>
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a class="page-link" <?php if($halaman > 1){ echo "href='?halaman=index_article&page=$previous'"; } ?>>Previous</a>
                            </li>
                            <?php 
                            for($x=1;$x<=$total_halaman;$x++){
                                ?> 
                                <li class="page-item"><a class="page-link" href="?halaman=index_article&page=<?php echo $x ?>"><?php echo $x; ?></a></li>
                                <?php
                            }
                            ?>				
                            <li class="page-item">
                                <a  class="page-link" <?php if($halaman < $total_halaman) { echo "href='?halaman=index_article&page=$next'"; } ?>>Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>


