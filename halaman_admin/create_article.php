<?php
    require '../koneksi.php';
    if (isset($_POST['submit'])) {
        $category = $_POST['category_id'];
        $admin = $_POST['admin_id'];
        $judul = $_POST['judul_article'];
        $slug = $_POST['slug_article'];
        $deskripsi = $_POST['deskripsi_article'];
        $created_at = date("Y-m-d H:i:s");

        if(isset($_FILES['gambar_article'])){
            $ekstensi_diperbolehkan	= ['png','jpg'];
            $nama = $_FILES['gambar_article']['name'];
            $x = explode('.', $nama);
            $ekstensi = strtolower(end($x));
            $ukuran	= $_FILES['gambar_article']['size'];
            $file_tmp = $_FILES['gambar_article']['tmp_name'];	
                if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
                    if($ukuran < 1044070){			
                    move_uploaded_file($file_tmp, 'gambar_article/'.$nama);
                    $query = mysqli_query($conn,"INSERT INTO article VALUES(NULL,'$category','$admin','$judul','$slug','$deskripsi','$nama','$created_at')");
                    if($query){
                        $_SESSION['sukses'] = "Berhasil Tambah Data";
                        header("Location: template_admin.php?halaman=index_article");
                    }else{
                        echo 'GAGAL MENGUPLOAD GAMBAR'. mysqli_connect_error($query);
                    }

                    }else{
                        $_SESSION['gagal'] =  'UKURAN FILE TERLALU BESAR';
                    }

                    }else{
                        $_SESSION['gagal'] =  'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
                    }
            }
    }

?>
<div class="col py-3">
    <div class="row justify-content-center">
        <div class="col-md-9">
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
            <div class="card">
                <div class="card-header">
                    <div class="card-title text-primary">Tambah Article</div>
                </div>
                <div class="card-body">
                    <form action="#" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="">Category</label>
                            <select name="category_id" class="form-control">
                                <?php 
                                require '../koneksi.php';
                                $sql = mysqli_query($conn,'SELECT * FROM category');
                                while($row = mysqli_fetch_assoc($sql)):
                                ?>
                                    <option value="<?php echo $row['category_id'] ?>"><?php echo $row['judul_category'] ?></option>
                                <?php endwhile;?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="">Author</label>
                            <select name="admin_id" class="form-control">
                                <?php 
                                require '../koneksi.php';
                                $sql = mysqli_query($conn,'SELECT * FROM admin');
                                while($row = mysqli_fetch_assoc($sql)):
                                ?>
                                    <option value="<?php echo $row['admin_id'] ?>"><?php echo $row['nama'] ?></option>
                                <?php endwhile;?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="">Judul Article</label>
                            <input type="text" name="judul_article" class="form-control" placeholder="Tambahkan Judul article" required>
                        </div>
                        <div class="mb-3">
                            <label for="">Slug Article</label>
                            <input type="text" name="slug_article" class="form-control" placeholder="Tambahkan Slug article" required>
                        </div>
                        <div class="mb-3">
                            <label for="">Deskripsi article</label>
                            <textarea name="deskripsi_article" cols="30" rows="10" placeholder="Tambahkan Deskripsi article" class="form-control" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="">Gambar Article</label>
                            <input type="file" name="gambar_article" class="form-control" required>
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary">Tambah</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

