
<?php include 'template/header.php';?>
<br>
<div class="row">
<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3 pr-0">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-user"></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Total Printer
                    </div>
                    <h4 class="1"><?php 
                    $itungpelanggan = mysqli_query($conn,"SELECT COUNT(id_printer) as jumlahpelanggan FROM printer");
                    $cekrow1 = mysqli_num_rows($itungpelanggan);
                    $itungpelanggan1 = mysqli_fetch_assoc($itungpelanggan);
                    $itungpelanggan2 = $itungpelanggan1['jumlahpelanggan'];
                    if($cekrow1 > 0){
                        echo  $itungpelanggan2;
                        } ?></h4>
                </div>
                </div>
            </div>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3 m-pr-0">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-shopping-cart" ></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Printer Belum Terpasang
                    </div>
                    <h4 class="1"><?php 
                    $itungpelanggan = mysqli_query($conn,"SELECT COUNT(status) as jumlahpelanggan FROM printer WHERE status = 'belum terpasang' ");
                    $cekrow1 = mysqli_num_rows($itungpelanggan);
                    $itungpelanggan1 = mysqli_fetch_assoc($itungpelanggan);
                    $itungpelanggan2 = $itungpelanggan1['jumlahpelanggan'];
                    if($cekrow1 > 0){
                        echo  $itungpelanggan2;
                        } ?></h4>
                </div>
                </div>
            </div>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3 m-pr-0">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-shopping-cart" ></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Total NET.
                    </div>
                    <h4 class="1"><?php 
                    $itungpelanggan = mysqli_query($conn,"SELECT COUNT(properti_printer) as jumlah FROM printer WHERE properti_printer= 'NMT' ");
                    $cekrow1 = mysqli_num_rows($itungpelanggan);
                    $itungpelanggan1 = mysqli_fetch_assoc($itungpelanggan);
                    $itungpelanggan2 = $itungpelanggan1['jumlah'];
                    if($cekrow1 > 0){
                        echo  $itungpelanggan2;
                        } ?></h4>
                </div>
                </div>
            </div>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3 m-pr-0">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-shopping-cart" ></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Total Detoda
                    </div>
                    <h4 class="1"><?php 
                    $itungpelanggan = mysqli_query($conn,"SELECT COUNT(properti_printer) as jumlah FROM printer WHERE properti_printer= 'detoda' ");
                    $cekrow1 = mysqli_num_rows($itungpelanggan);
                    $itungpelanggan1 = mysqli_fetch_assoc($itungpelanggan);
                    $itungpelanggan2 = $itungpelanggan1['jumlah'];
                    if($cekrow1 > 0){
                        echo  $itungpelanggan2;
                        } ?></h4>
                </div>
                </div>
            </div>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3 m-pr-0">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                 <a  href="laporan.php">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-shopping-cart" ></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Toner Terpasang
                    </div>
                    <h4 class="1"><?php $itungpeterjual = mysqli_query($conn,"SELECT SUM(quantity) as jumlahterjual FROM tb_nota");
                    $cekrow = mysqli_num_rows($itungpeterjual);
                    $itungpeterjual1 = mysqli_fetch_assoc($itungpeterjual);
                    $itungpeterjual2 = $itungpeterjual1['jumlahterjual'];
                    if($cekrow > 0){
                        echo $itungpeterjual2;
                        } ?></h4>
                </div>
                </div>
            </a>
            </div>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3 m-pr-0">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-shopping-cart" ></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Toner Terpasang Bulan ini
                    </div>
                    <h4 class="1">
                    <?php 
                    $bln = date("m-y");
                    $itungpeterjual = mysqli_query($conn,"SELECT SUM(quantity) as jumlahterjual FROM tb_nota WHERE MONTH(tgl_input) = '".$bln."'" );
                    $cekrow = mysqli_num_rows($itungpeterjual);
                    $itungpeterjual1 = mysqli_fetch_assoc($itungpeterjual);
                    $itungpeterjual2 = $itungpeterjual1['jumlahterjual'];
                    if($cekrow > 0){
                        echo $itungpeterjual2;
                        } ?></h4>
                </div>
                </div>
            </div>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3 pr-0">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-dollar-sign"></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Total Bulan ini
                    </div>
                    <h4 class="1">Rp.<?php 
                    $bln = date("m-y");
                    $itungtotal = mysqli_query($conn,"SELECT SUM(totalbeli) as jumlahtotal FROM laporan WHERE MONTH(tgl_sub) = '".$bln."'");
                    $cekrow3 = mysqli_num_rows($itungtotal);
                    $itungtotal1 = mysqli_fetch_assoc($itungtotal);
                    $itungtotal2 = $itungtotal1['jumlahtotal'];
                    if($cekrow3 > 0){
                        echo ribuan($itungtotal2);
                        } ?></h4>
                </div>
                </div>
            </div>
        </div>

        <div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-3">
            <div class="card-body bg-white py-2 px-1 border-laporan">
                <div class="row mx-auto align-items-center">
                <div class="col-auto m-pr-1">
                    <div class="bg-icon">
                        <i class="fa fa-file-invoice-dollar"></i>
                    </div>
                </div>
                <div class="col-auto pl-0 pt-2">
                    <div class="text-muted" style="font-size:11px;">
                        Total
                    </div>
                    <h4 class="1">Rp.<?php 
                    $bln = date("m");
                    $itungtotal = mysqli_query($conn,"SELECT SUM(totalbeli) as jumlahtotal FROM laporan ");
                    $cekrow3 = mysqli_num_rows($itungtotal);
                    $itungtotal1 = mysqli_fetch_assoc($itungtotal);
                    $itungtotal2 = $itungtotal1['jumlahtotal'];
                    if($cekrow3 > 0){
                        echo ribuan($itungtotal2);
                        } ?></h4>
                </div>
                </div>
            </div>
        </div>
</div>

<?php
            if(isset($_POST['tambahPrinter']))
            {
                $tipe_printer = htmlspecialchars($_POST['tipe_printer']);
                $properti_printer = htmlspecialchars($_POST['properti_printer']);
                $serial_printer = htmlspecialchars($_POST['serial_printer']);
                $lokasi_printer = htmlspecialchars($_POST['lokasi_printer']);
                $lantai_printer = htmlspecialchars($_POST['lantai_printer']);
                $link_printer = htmlspecialchars($_POST['link_printer']);
                $itedit = htmlspecialchars($_POST['itedit']);

                $tambahkat = mysqli_query($conn,"INSERT INTO printer (tipe_printer,properti_printer,serial_printer,lokasi_printer,lantai_printer,link_printer,itedit)
                values ('$tipe_printer,$properti_printer,$serial_printer,$lokasi_printer,$lantai_printer,$status,$link_printer'$itedit)");
                if ($tambahkat){
                    echo '<script>alert("Berhasil Menambahkan Data");window.location="printer.php"</script>';
                } else {
                    echo '<script>alert("Gagal Menambahkan Data");history.go(-1);</script>';
                }
                
            };

            if(isset($_POST['updatePrinter'])){
                $id_printer = htmlspecialchars($_POST['id_printer']);
                $tipe_printer = htmlspecialchars($_POST['tipe_printer']);
                $properti_printer = htmlspecialchars($_POST['properti_printer']);
                $serial_printer = htmlspecialchars($_POST['serial_printer']);
                $lokasi_printer = htmlspecialchars($_POST['lokasi_printer']);
                $lantai_printer = htmlspecialchars($_POST['lantai_printer']);
                $status = htmlspecialchars($_POST['status']);
                $link_printer = htmlspecialchars($_POST['link_printer']);
                $itedit = htmlspecialchars($_POST['itedit']);

                mysqli_query($conn,"UPDATE printer SET
                    tipe_printer='$tipe_printer',properti_printer='$properti_printer',serial_printer='$serial_printer',lokasi_printer='$lokasi_printer',lantai_printer='$lantai_printer',status='$status',link_printer='$link_printer',itedit='$itedit'
                WHERE id_printer='$id_printer' ");
                echo '<script>alert("Berhasil Update data printer");window.location="printer.php"</script>';
            };
            ?>
<div class="card">
    <div class="card-header">
        <div class="card-tittle"><i class="fa fa-table me-2"></i> Data Printer
         <button type="button" class="btn btn-primary btn-xs p-2 float-right" data-toggle="modal" data-target="#addprinter"> 
            <i class="fa fa-plus fa-xs mr-1"></i>Tambah Data</button></div>
    </div>
        <div class="card-body">
            <table class="table table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>Tipe Printer</th>
                            <th>Properti</th>
                            <th>Serial/barcode</th>
                            <th>Lokasi Printer</th>
                            <th>Lantai Printer</th>
                            <th>Status Printer</th>
                            <th>IT Last Edit</th>
                            <th>Link Printer</th>
                            <th>Opsi</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $no=1;
                                $data_produk5=mysqli_query($conn,"SELECT * FROM printer order by id_printer DESC");
                                while($d=mysqli_fetch_array($data_produk5)){
                                    $id_printer = $d['id_printer'];
                                    $status =$d['status'];

                                    if ($status=='Terpasang'){
                                        $color= "class='table-success'";
                                    }
                                    else if($status=='Rusak') {
                                        $color= "class='table-info'";
                                    }
                                    else {
                                         $color= "class='table-danger'";
                                    }

                                    ?>
                                    
                                    <tr <?= $color ?>>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $d['tipe_printer'] ?></td>
                                        <td ><?php echo $d['properti_printer'] ?></td>
                                        <td><?php echo $d['serial_printer'] ?></td>
                                        <td><?php echo $d['lokasi_printer'] ?></td>
                                        <td><?php echo $d['lantai_printer'] ?></td>
                                        <td ><?php echo $d['status'] ?></td>
                                        <td><?php echo $d['itedit'] ?></td>
                                        <td><?php echo '<a href="'.$d['link_printer'].'" target="_blank">'.$d['link_printer'].'</td>'?>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-xs"
                                             data-toggle="modal" data-target="#editP<?php echo $id_printer ?>">
                                             <i class="fa fa-pen fa-xs mr-1"></i>Edit</button>
                                        </td>
                                    </tr>
                                    
                                    <!-- modal edit -->
                                    <div class="modal fade" id="editP<?php echo $id_printer ?>" tabindex="-1" role="dialog" aria-labelledby="ModalTittle2" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                            <form method="post">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="ModalTittle2"><i class="fa fa-user mr-1 text-muted"></i> Edit Printer</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group mb-2">
                                                    <label>Tipe Printer :</label>
                                                    <input type="hidden" name="id_printer" class="form-control" value="<?php echo $d['id_printer'] ?>">
                                                    <input type="text" name="tipe_printer" class="form-control" value="<?php echo $d['tipe_printer'] ?>" readonly>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Properti :</label>
                                                    <input type="hidden" name="properti_printer" class="form-control" value="<?php echo $d['properti_printer'] ?>">
                                                    <input type="text" name="properti_printer" class="form-control" value="<?php echo $d['properti_printer'] ?>" readonly>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Serial :</label>
                                                    <input type="text" name="serial_printer" class="form-control" value="<?php echo $d['serial_printer'] ?>"readonly >
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Lokasi Printer :</label>
                                                    <input type="text" name="lokasi_printer" class="form-control" value="<?php echo $d['lokasi_printer'] ?>"required>
                                                </div>
                                                 <div class="form-group mb-2">
                                                    <label>Lantai Printer :</label>
                                                    <select name="lantai_printer" class="form-control" required>
                                                            <option value="Lt27">Lt27</option>
                                                            <option value="Lt28">Lt28</option>
                                                            <option value="Lt28">Lt29</option>
                                                            <option value="Lt30">Lt30</option>
                                                            <option value="Mitra">Mitra</option>
                                                        </select>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Status Printer :</label>
                                                    <select name="status" class="form-control" required>
                                                            <option value="Belum Terpasang" >Belum Terpasang</option>
                                                            <option value="Rusak Ngejam">Rusak Ngejam</option>
                                                            <option value="Rusak Film">Rusak Film</option>
                                                            <option value="Rusak lainnya">Rusak lainnya</option>
                                                            <option value="Terpasang">Terpasang</option>
                                                            <option value="Gudang Properti">Gudang Properti</option>
                                                            <option value="Wardrobe Mitra">Wardrobe Mitra</option>
                                                            <option value="Tidak diketahui">Tidak diketahui</option>
                                                            </select>
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Link Printer :</label>
                                                    <input type="text" name="link_printer" class="form-control" value="<?php echo $d['link_printer'] ?>" >
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>IT Edit :</label>
                                                    <input type="text" name="itedit" class="form-control" value="<?php echo $_SESSION['username'] ?>" readonly>
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
        $hapus_data = mysqli_query($conn, "DELETE FROM printer WHERE id_printer='$id_printer'");
        if($hapus_data){
            echo '<script>alert("Berhasi Hapus Printer");window.location="printer.php"</script>';
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
        <h5 class="modal-title" id="ModalTittle"><i class="fa fa-shopping-bag mr-1 text-muted"></i> Tambah Printer</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="form-group mb-2">
                <label>Tipe Printer :</label>
                <input type="text" name="tipe_printer" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>Properti :</label>
                <input type="text" name="properti_printer" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>Serial :</label>
                <input type="text" name="serial_printer" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>Lokasi :</label>
                <input type="text" name="lokasi_printer" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>Lantai :</label>
                <input type="text" name="lantai_printer" class="form-control" required>
            </div>
            <div class="form-group mb-2">
                <label>IT :</label>
                <input type="text" name="itedit" class="form-control" value="<?php echo $_SESSION['username'] ?>" readonly>
            </div>
            <div class="form-group mb-2">
                <label>Link :</label>
                <input type="text" name="link_printer" class="form-control" required>
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
