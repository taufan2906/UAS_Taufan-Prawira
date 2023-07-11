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
        </div>
    </div>
</div>

