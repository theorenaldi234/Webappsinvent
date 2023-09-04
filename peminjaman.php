
<?php include 'template/header.php';?>
<br>


<?php
            if(isset($_POST['tambahPrinter']))
            {
                $idkar = htmlspecialchars($_POST['idkar']);
                $idbrg = htmlspecialchars($_POST['idbrg']);
                $itout = htmlspecialchars($_POST['itout']);
                $tglout = htmlspecialchars($_POST['tglout']);
                $status = htmlspecialchars($_POST['status']);
                $keperluan = htmlspecialchars($_POST['keperluan']);

                $tambahkat = mysqli_query($conn,"INSERT INTO peminjaman (idkar,idbrg,itout,tglout,status,keperluan)
                values ('$idkar','$idbrg','$itout','$tglout','$status','$keperluan')");
                if ($tambahkat){
                    echo '<script>alert("Berhasil Menambahkan Data");window.location="peminjaman.php"</script>';
                } else {
                    echo '<script>alert("Gagal Menambahkan Data");history.go(-1);</script>';
                }
                
            };

            if(isset($_POST['updatePrinter'])){
                $idpinjam = htmlspecialchars($_POST['idpinjam']);
                $itout = htmlspecialchars($_POST['itout']);
                $itin = htmlspecialchars($_POST['itin']);
                $tglin = htmlspecialchars($_POST['tglin']);
                $status = htmlspecialchars($_POST['status']);

                mysqli_query($conn,"UPDATE peminjaman SET
                    itout='$itout',itin='$itin',tglin='$tglin',status='$status'
                WHERE idpinjam='$idpinjam' ");
                echo '<script>alert("Berhasil Update data printer");window.location="peminjaman.php"</script>';
            };
            ?>
<div class="card">
    <div class="card-header">
        <div class="card-tittle"><i class="fa fa-table me-2"></i> Data Peminjam
         <button type="button" class="btn btn-primary btn-xs p-2 float-right" data-toggle="modal" data-target="#addprinter"> 
            <i class="fa fa-plus fa-xs mr-1"></i>Tambah Data</button></div>
    </div>
        <div class="card-body">
            <table class="table table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>Nama Peminjam</th>
                            <th>NIK</th>
                            <th>No Handphone</th>
                            <th>Nama Barang</th>
                            <th>IT Out</th>
                            <th>Tanggal Out</th>
                            <th>IT In</th>
                            <th>Tanggal In</th>
                            <th>Status</th>
                            <th>Keperluan</th>
                            <th>Opsi</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $no=1;
                                $data_produk=mysqli_query($conn,"SELECT * FROM peminjaman l, pelanggan e
                                WHERE  l.idkar=e.idpelanggan ORDER BY idpinjam DESC");
                                while($d=mysqli_fetch_array($data_produk)){
                                    $idpinjam= $d['idpinjam'];
                                    $idbrg= $d['idbrg'];
                                    $status =$d['status'];

                                    if ($status=='Sudah Balik'){
                                        $color= "class='table-success'";
                                    }
                                    else {
                                         $color= "class='table-danger'";
                                    }
                                    ?>
                                    
                                    <tr <?= $color ?>>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $d['nama_pelanggan'] ?></td>
                                        <td><?php echo $d['alamat_pelanggan'] ?></td>
                                        <td><?php echo $d['telepon_pelanggan'] ?></td>
                                        <td><?php 
                                            $itungtrans = mysqli_query($conn,"SELECT namabrg as jumlahtrans
                                             FROM barang where idbrg='$idbrg'"); 
                                            $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                            $itungtrans3 = $itungtrans2['jumlahtrans'];
                                            echo $itungtrans3;
                                        ?></td>
                                        <td><?php echo $d['itout'] ?></td>
                                        <td><?php echo $d['tglout'] ?></td>
                                        <td><?php echo $d['itin'] ?></td>
                                        <td><?php echo $d['tglin'] ?></td>
                                        <td ><?php echo $d['status'] ?></td>
                                        <td ><?php echo $d['keperluan'] ?></td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-xs"
                                             data-toggle="modal" data-target="#editP<?php echo $idpinjam ?>">
                                             <i class="fa fa-pen fa-xs mr-1"></i>Edit</button>
                                        </td>
                                    </tr>
                                    
                                    <!-- modal edit -->
                                    <div class="modal fade" id="editP<?php echo $idpinjam ?>" tabindex="-1" role="dialog" aria-labelledby="ModalTittle2" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                            <form method="post">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="ModalTittle2"><i class="fa fa-user mr-1 text-muted"></i> Edit Peminjaman</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group mb-2">
                                                    <label>Nama Peminjam :</label>
                                                    <input type="hidden" name="idpinjam" class="form-control" value="<?php echo $d['idpinjam'] ?>">
                                                    <input type="text" name="idkar" class="form-control" value="<?php echo $d['nama_pelanggan'] ?>" readonly>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Nama Barang :</label>
                                                    <input type="text" class="form-control" value="<?php 
                                            $itungtrans = mysqli_query($conn,"SELECT namabrg as jumlahtrans
                                             FROM barang where idbrg='$idbrg'"); 
                                            $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                            $itungtrans3 = $itungtrans2['jumlahtrans'];
                                            echo $itungtrans3;
                                        ?>"readonly >
                                                </div>
                                                 <div class="form-group mb-2">
                                                    <label>IT Out :</label>
                                                    <input type="text" name="itout" class="form-control" value="<?php echo $d['itout'] ?>"readonly >
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>IT IN :</label>
                                                    <input type="text" name="itin" class="form-control" value="<?php echo $_SESSION['username'] ?>" required>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Tanggal IN :</label>
                                                    <input type="date" name="tglin" class="form-control" value="<?php echo date('Y-m-d'); ?>" required>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Status :</label>
                                                <select name="status" class="form-control" required>
                                                            <option value="Dipinjam">Dipinjam</option>
                                                            <option value="Sudah Balik">Sudah Balik</option>
                                                        </select>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Keperluan :</label>
                                                    <input type="text" name="keperluan" class="form-control" value="<?php echo $d['keperluan'] ?>"readonly >
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light btn-xs p-2" data-dismiss="modal">
                                                    <i class="fa fa-times mr-1"></i> Batal</button>
                                                <button type="submit" class="btn btn-primary btn-xs p-2" name="updatePrinter">
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
        $id_printer = $_GET['hapus'];
        $hapus_data = mysqli_query($conn, "DELETE FROM peminjaman WHERE idpinjam='$idpinjam'");
        if($hapus_data){
            echo '<script>alert("Berhasi Hapus Printer");window.location="peminjaman.php"</script>';
        } else {
            echo '<script>alert("gagal Hapus Printer");history.go(-1);</script>';
        }
    };
    ?>
<!-- Modal -->
<div class="modal fade" id="addprinter" tabindex="-1" role="dialog" aria-labelledby="ModalTittle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <form method="post">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalTittle"><i class="fa fa-shopping-bag mr-1 text-muted"></i> Tambah Pinjam</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="form-group mb-2">
                <label>Nama Peminjam :</label>
                <select name="idkar" class="form-control" required>
                                                            <option value="<?php echo $d['idkar'] ?>" class="small"><?php echo $d['nama_pelanggan'] ?></option>
                                                        <?php
                                                        $dataK=mysqli_query($conn,"SELECT * FROM pelanggan ORDER BY nama_pelanggan ASC")or die(mysqli_error());
                                                        while($dk=mysqli_fetch_array($dataK)){
                                                        ?>
                                                            <option value="<?php echo $dk['idpelanggan'] ?>" class="small"><?php echo $dk['nama_pelanggan'] ?></option>
                                                            <?php } ?>
                                                        </select>
            </div>
            <div class="form-group mb-2">
                <label>Nama Barang :</label>
                <select name="idbrg" class="form-control" required>
                                                            <option value="<?php echo $d['idbrg'] ?>" class="small"><?php echo $d['namabrg'] ?></option>
                                                        <?php
                                                        $dataK=mysqli_query($conn,"SELECT * FROM barang ORDER BY namabrg ASC")or die(mysqli_error());
                                                        while($dk=mysqli_fetch_array($dataK)){
                                                        ?>
                                                            <option value="<?php echo $dk['idbrg'] ?>" class="small"><?php echo $dk['namabrg'] ?></option>
                                                            <?php } ?>
                                                        </select>
            </div>
            <div class="form-group mb-2">
                <label>IT Out :</label>
                <input type="text" name="itout" class="form-control" value="<?php echo $_SESSION['username'] ?>" readonly>
            </div>
            <div class="form-group mb-2">
                <label>Tanggal Out :</label>
                <input type="date" name="tglout" class="form-control" value="<?php echo date('Y-m-d'); ?>" readonly>
                <input type="hidden" name="status" class="form-control" value="Dipinjam" readonly>
            </div>
            <div class="form-group mb-2">
                <label>Keperluan :</label>
                <input type="text" name="keperluan" class="form-control" class="form-control" required="">
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light btn-xs p-2" data-dismiss="modal">
            <i class="fa fa-times mr-1"></i> Batal</button>
        <button type="reset" class="btn btn-danger btn-xs p-2">
        <i class="fa fa-trash-restore-alt mr-1"></i> Reset</button>
        <button type="submit" class="btn btn-primary btn-xs p-2" name="tambahPrinter">
        <i class="fa fa-plus-circle mr-1"></i> Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>
<?php include 'template/footer.php';?>
