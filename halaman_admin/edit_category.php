<?php
    require '../koneksi.php';
    if (isset($_POST['submit'])) {
        $id = $_GET['id'];
        $judul = $_POST['judul_category'];
        $slug = $_POST['slug_category'];
        $deskripsi = $_POST['deskripsi_category'];

        if(isset($_FILES['gambar_category'])){
            $ekstensi_diperbolehkan	= ['png','jpg'];
            $nama = $_FILES['gambar_category']['name'];
            $x = explode('.', $nama);
            $ekstensi = strtolower(end($x));
            $ukuran	= $_FILES['gambar_category']['size'];
            $file_tmp = $_FILES['gambar_category']['tmp_name'];	 
                if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
                    if($ukuran < 1044070){			
                    move_uploaded_file($file_tmp, 'gambar_category/'.$nama);
                    $query = mysqli_query($conn,"UPDATE category SET judul_category = '$judul', slug_category = '$slug',deskripsi_category = '$deskripsi',gambar_category = '$nama' WHERE category_id = '$id'");
                    if($query){
                        $_SESSION['sukses'] = "Berhasil Ubah Data";
                        header("Location: template_admin.php?halaman=index_category");
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
                    <div class="card-title text-primary">Ubah Category</div>
                </div>
                <div class="card-body">
                    <?php
                        require '../koneksi.php';
                        $id = $_GET['id'];
                        $sql = mysqli_query($conn, "SELECT * FROM category WHERE category_id = '$id'");
                        $row = mysqli_fetch_assoc($sql);
                    ?>
                    <form action="#" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="">Judul Category</label>
                            <input type="text" name="judul_category" class="form-control" placeholder="Tambahkan Judul Category" value="<?php echo $row['judul_category'] ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="">Slug Category</label>
                            <input type="text" name="slug_category" class="form-control" placeholder="Tambahkan Slug Category" value="<?php echo $row['slug_category'] ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="">Deskripsi Category</label>
                            <textarea name="deskripsi_category" cols="30" rows="10" placeholder="Tambahkan Deskripsi Category" class="form-control" required><?php echo $row['deskripsi_category'] ?></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="">Gambar Category</label>
                            <input type="file" name="gambar_category" class="form-control" required>
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary">Ubah</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

