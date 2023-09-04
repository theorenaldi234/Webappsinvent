
<?php include 'template/header.php';?>
<br>
<?php
            if(isset($_POST['tambahPelanggan']))
            {
                $namabrg = htmlspecialchars($_POST['namabrg']);
                $barcode = htmlspecialchars($_POST['barcode']);
                $properti = htmlspecialchars($_POST['properti']);
                $status = htmlspecialchars($_POST['status']);

                $tambahkat = mysqli_query($conn,"INSERT INTO barang (namabrg,barcode,properti,status)
                values ('$namabrg','$barcode','$properti','$status')");
                if ($tambahkat){
                    echo '<script>alert("Berhasil Menambahkan Data");window.location="barang.php"</script>';
                } else {
                    echo '<script>alert("Gagal Menambahkan Data");history.go(-1);</script>';
                }
                
            };

            if(isset($_POST['updatePelanggan'])){
                $idbrg = htmlspecialchars($_POST['idbrg']);
                $namabrg = htmlspecialchars($_POST['namabrg']);
                $barcode = htmlspecialchars($_POST['barcode']);
                $properti = htmlspecialchars($_POST['properti']);
                $status = htmlspecialchars($_POST['status']);

                mysqli_query($conn,"UPDATE barang SET
                namabrg='$namabrg',barcode='$barcode',properti='$properti',status='$status'
                WHERE idbrg='$idbrg' ");
                echo '<script>alert("Berhasil Update data pelanggan");window.location="barang.php"</script>';
            };
            ?>
<div class="card">
    <div class="card-header">
        <div class="card-tittle"><i class="fa fa-table me-2"></i> Data Barang
        <button type="button" class="btn btn-primary btn-xs p-2 float-right" data-toggle="modal" data-target="#addpelanggan">
            <i class="fa fa-plus fa-xs mr-1"></i> Tambah Data</button></div>
    </div>
        <div class="card-body">
            <table class="table table-striped table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>Nama Barang</th>
                            <th>Serial/Barcode</th>
                            <th>Properti</th>
                            <th>Status</th>
                            <th>Opsi</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $no=1;
                                $data_produk5=mysqli_query($conn,"SELECT * FROM barang order by idbrg ASC");
                                while($d=mysqli_fetch_array($data_produk5)){
                                    $idbrg = $d['idbrg'];
                                    ?>
                                    
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $d['namabrg'] ?></td>
                                        <td><?php echo $d['barcode'] ?></td>
                                        <td><?php echo $d['properti'] ?></td>
                                        <td><?php echo $d['status'] ?></td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-xs"
                                             data-toggle="modal" data-target="#editP<?php echo $idbrg ?>">
                                             <i class="fa fa-pen fa-xs mr-1"></i>Edit</button><!-- 
                                            <a class="btn btn-danger btn-xs" href="?hapus=<?php echo $idpelanggan ?>" 
                                            onclick="javascript:return confirm('Hapus Data Pelanggan - <?php echo $d['nama_pelanggan'] ?> ?');">
                                            <i class="fa fa-trash fa-xs mr-1"></i>Hapus</a> -->
                                        </td>
                                    </tr>
                                    
                                    <!-- modal edit -->
                                    <div class="modal fade" id="editP<?php echo $idbrg ?>" tabindex="-1" role="dialog" aria-labelledby="ModalTittle2" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                            <form method="post">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="ModalTittle2"><i class="fa fa-user mr-1 text-muted"></i> Edit Barang</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group mb-2">
                                                    <label>Nama Barang :</label>
                                                    <input type="hidden" name="idbrg" class="form-control" value="<?php echo $d['idbrg'] ?>">
                                                    <input type="text" name="namabrg" class="form-control" value="<?php echo $d['namabrg'] ?>" required>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Serial/Barcode :</label>
                                                    <input type="text" name="barcode" class="form-control" value="<?php echo $d['barcode'] ?>" required>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Properti :</label>
                                                    <input type="text" name="properti" class="form-control" value="<?php echo $d['properti'] ?>" required>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Status :</label>
                                                    <input type="text" name="status" class="form-control" value="<?php echo $d['status'] ?>" required>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light btn-xs p-2" data-dismiss="modal">
                                                    <i class="fa fa-times mr-1"></i> Batal</button>
                                                <button type="submit" class="btn btn-primary btn-xs p-2" name="updatePelanggan">
                                                <i class="fa fa-plus-circle mr-1"></i> Simpan</button>
                                            </div>
                                            </form>
                                            </div>
                                        </div>
                                        </div>
                                    <!-- end modal edit -->
                        <?php }?>
					</tbody>
                </table>
        </div>
</div>
<?php 
	if(!empty($_GET['hapus'])){
		$idpelanggan = $_GET['hapus'];
		$hapus_data = mysqli_query($conn, "DELETE FROM barang WHERE idbrg='$idbrg'");
        if($hapus_data){
            echo '<script>alert("Berhasi Hapus pelanggan");window.location="barang.php"</script>';
        } else {
            echo '<script>alert("gagal Hapus pelanggan");history.go(-1);</script>';
        }
	};
    ?>
<!-- Modal -->
<div class="modal fade" id="addpelanggan" tabindex="-1" role="dialog" aria-labelledby="ModalTittle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <form method="post">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalTittle"><i class="fa fa-shopping-bag mr-1 text-muted"></i> Tambah Barang</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="form-group mb-2">
                <label>Nama Barang :</label>
                <input type="text" name="namabrg" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>Serial.Barcode :</label>
                <input type="text" name="barcode" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>Properti :</label>
                <input type="text" name="properti" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>Status :</label>
                <input type="text" name="status" class="form-control" required>
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light btn-xs p-2" data-dismiss="modal">
            <i class="fa fa-times mr-1"></i> Batal</button>
        <button type="reset" class="btn btn-danger btn-xs p-2">
        <i class="fa fa-trash-restore-alt mr-1"></i> Reset</button>
        <button type="submit" class="btn btn-primary btn-xs p-2" name="tambahPelanggan">
        <i class="fa fa-plus-circle mr-1"></i> Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>
<?php include 'template/footer.php';?>
