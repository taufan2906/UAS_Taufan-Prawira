<?php
    require '../koneksi.php';
    if (isset($_POST['submit'])) {
        $id = $_GET['id'];
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
                    $query = mysqli_query($conn,"UPDATE article SET category_id =  '$category', admin_id = '$admin', judul_article = '$judul', slug_article = '$slug', deskripsi_article = '$deskripsi', gambar_article = '$nama',dibuat_pada = '$created_at' WHERE article_id = '$id'");
                    if($query){
                        $_SESSION['sukses'] = "Berhasil Ubah Data";
                        header("Location: template_admin.php?halaman=index_article");
                    }else{
                        echo 'GAGAL MENGUPLOAD GAMBAR'. mysqli_connect_error($query);
                    }

                    }else{
                        echo 'UKURAN FILE TERLALU BESAR';
                    }

                    }else{
                        echo 'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
                    }
            }
    }

?>
<div class="col py-3">
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    <div class="card-title text-primary">Ubah Article</div>
                </div>
                <div class="card-body">
                <?php
                    require '../koneksi.php';
                    $id = $_GET['id'];
                    $sql_article = mysqli_query($conn, "SELECT * FROM article WHERE article_id = '$id'");
                    $article = mysqli_fetch_assoc($sql_article);
                ?>
                    <form action="#" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="">Category</label>
                            <select name="category_id" class="form-control">
                                <?php 
                                require '../koneksi.php';
                                $sql_category = mysqli_query($conn,'SELECT * FROM category');
                                while($category = mysqli_fetch_assoc($sql_category)):
                                ?>
                                    <option value="<?php echo $category['category_id'] ?>" <?php if($category['category_id'] == $article['category_id']){ echo 'selected'; } ?>><?php echo $category['judul_category'] ?></option>
                                <?php endwhile;?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="">Author</label>
                            <select name="admin_id" class="form-control">
                                <?php 
                                require '../koneksi.php';
                                $sql_admin = mysqli_query($conn,'SELECT * FROM admin');
                                while($admin = mysqli_fetch_assoc($sql_admin)):
                                ?>
                                    <option value="<?php echo $admin['admin_id'] ?>" <?php if($admin['admin_id'] == $article['admin_id']){ echo 'selected'; } ?>><?php echo $admin['nama'] ?></option>
                                <?php endwhile;?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="">Judul Article</label>
                            <input type="text" name="judul_article" class="form-control" placeholder="Tambahkan Judul article" value="<?php echo $article['judul_article'] ?>">
                        </div>
                        <div class="mb-3">
                            <label for="">Slug Article</label>
                            <input type="text" name="slug_article" class="form-control" placeholder="Tambahkan Slug article" value="<?php echo $article['slug_article'] ?>">
                        </div>
                        <div class="mb-3">
                            <label for="">Deskripsi article</label>
                            <textarea name="deskripsi_article" cols="30" rows="10" placeholder="Tambahkan Deskripsi article" class="form-control"><?php echo $article['deskripsi_article'] ?></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="">Gambar Article</label>
                            <input type="file" name="gambar_article" class="form-control">
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary">Ubah</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

