
<?php include 'template/header.php';?>
<br>

<?php
session_start();
if(isset($_POST['update'])){
    $id_login = htmlspecialchars($_POST['id_login']);
    $username = htmlspecialchars($_POST['username']);
    $nama_toko = htmlspecialchars($_POST['nama_toko']);
    $alamat = htmlspecialchars($_POST['alamat']);
    $telepon = htmlspecialchars($_POST['telepon']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $result = mysqli_query($conn, "UPDATE login SET username='$username', password='$password',nama_toko='$nama_toko',alamat='$alamat',telepon='$telepon'
     WHERE id_login = '$id_login' ") or die(mysqli_connect_error());
    if(!$result){
        echo '<script>alert("data gagal di update");history.go(-1);</script>';
        } else{
            echo '<script>alert("data berhasil di update");window.location="pengaturan.php"</script>';
}
}?>

<div class="card">
    <div class="card-header">
        <div class="card-tittle"><i class="fa fa-cog me-2"></i> Account Settings</div>
    </div>
    <form method="post">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-6 col-md-6 mb-2">
                    <label for="username">Username<span class="text-danger">*</span></label>
                    <input type="hidden" name="id_login" value="<?php echo $_SESSION[id_login] ?>">
                    <input name="username" type="text" class="form-control" value="<?php echo $_SESSION['username']; ?>" id="username" placeholder="username" readonly>
                </div>
                <div class="col-sm-6 col-md-6 mb-2">
                    <label for="password">Password<span class="text-danger">*</span></label>
                    <input name="password" type="password" class="form-control" id="password" placeholder="password" required>
                </div>
            </div>
        </div>
        <div class="card-footer text-right">
            <button type="submit" name="update" class="btn btn-primary px-3">Update</button>
        </div>
    </form>
</div>


<?php include 'template/footer.php';?>
