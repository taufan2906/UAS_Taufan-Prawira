<?php
    require '../koneksi.php';
    if (isset($_POST['submit'])) {
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
                    $query = mysqli_query($conn,"INSERT INTO category VALUES(NULL,'$judul','$slug','$deskripsi','$nama')");
                    if($query){
                        $_SESSION['sukses'] = "Berhasil Tambah Data";
                        header("Location: template_admin.php?halaman=index_category");
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
                    <div class="card-title text-primary">Tambah Category</div>
                </div>
                <div class="card-body">
                    <form action="#" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="">Judul Category</label>
                            <input type="text" name="judul_category" class="form-control" placeholder="Tambahkan Judul Category">
                        </div>
                        <div class="mb-3">
                            <label for="">Slug Category</label>
                            <input type="text" name="slug_category" class="form-control" placeholder="Tambahkan Slug Category">
                        </div>
                        <div class="mb-3">
                            <label for="">Deskripsi Category</label>
                            <textarea name="deskripsi_category" cols="30" rows="10" placeholder="Tambahkan Deskripsi Category" class="form-control"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="">Gambar Category</label>
                            <input type="file" name="gambar_category" class="form-control">
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary">Tambah</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


