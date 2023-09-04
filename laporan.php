
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
                        Printer Ready
                    </div>
                    <h4 class="1"><?php 
                    $itungpelanggan = mysqli_query($conn,"SELECT COUNT(status) as jumlahpelanggan FROM printer WHERE status = 'ready' ");
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
                    $bln = date("m-y");
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
</div><!-- end row -->


<div class="card">
    <div class="card-header">
        <div class="card-tittle">
            <i class="fa fa-table me-2"></i> Data Laporan IT
        </div>
    </div>
        <div class="card-body">
            <table class="table table-striped table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
                <nav aria-label="...">
                    <ul class="pagination pagination-sm">
                        <li class="page-item active" aria-current="page1">
                        <span class="page-link">1</span>
                        </li>
                        <li class="page-item"><a class="page-link" href="detit.php">Detail Laporan IT</a></li>
                    </ul>
                 </nav>
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>IT On Duty</th>
                            <th>Lokasi Printer</th>
                            <th>Lantai</th>
                            <th>Tipe Printer</th>
                            <th>Qty</th>
                            <th>Catatan</th>
                            <th>SubTotal</th>
                            <th>Tanggal</th>
                            <th>Opsi</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $bln = date("Y-d-m");
                                $no=1;
                                $data_produk=mysqli_query($conn,"SELECT * FROM laporan l, printer e
                                WHERE  e.id_printer=l.id_printer and DAY(tgl_sub) = '".$bln."'  ORDER BY idlaporan DESC");
                                while($d=mysqli_fetch_array($data_produk)){
                                    $idlaporan= $d['idlaporan'];
                                    $nota= $d['no_nota'];
                                    ?>
                                    
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $d['nama_kasir'] ?></td>
                                        <td><?php echo $d['lokasi_printer'] ?></td>
                                        <td><?php echo $d['lantai_printer'] ?></td>
                                        <td><?php echo $d['tipe_printer'] ?></td>
                                        <td><?php 
                                            $itungtrans = mysqli_query($conn,"SELECT SUM(quantity) as jumlahtrans
                                             FROM tb_nota where no_nota='$nota'"); 
                                            $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                            $itungtrans3 = $itungtrans2['jumlahtrans'];
                                            echo $itungtrans3;
                                        ?></td>
                                         <td class="catatan"><?php echo $d['catatan'] ?></td>
                                         <td>Rp.<?php echo ribuan($d['totalbeli']) ?></td>
                                        <td><?php echo $d['tgl_sub'] ?></td>
                                        <td>
                                        <a class="btn btn-primary btn-xs" href="detail.php?invoice=<?php echo $nota ?>">
                                            <i class="fa fa-eye fa-xs mr-1"></i>View</a>
                                            <!-- <a class="btn btn-danger btn-xs" href="?hapus=<?php echo $nota ?>" 
                                            onclick="javascript:return confirm('Hapus Data laporan - <?php echo $d['no_nota'] ?> ?');">
                                            <i class="fa fa-trash fa-xs mr-1"></i>Hapus</a> -->
                                        </td>
                                    </tr>       
                        <?php }?>
                    </tbody>
                </table>
        </div>
</div>

<?php 
    if(!empty($_GET['hapus'])){
        $nota = $_GET['hapus'];
        $hapus_data = mysqli_query($conn, "DELETE FROM laporan WHERE no_nota='$nota'");
        $hapus_data1 = mysqli_query($conn, "DELETE FROM tb_nota WHERE no_nota='$nota'");
        if($hapus_data&&$hapus_data1){
            echo '<script>alert("Berhasi Hapus data laporan");window.location="laporan.php"</script>';
        } else {
            echo '<script>alert("gagal Hapus data laporan");history.go(-1);</script>';
        }
    };
    ?>
<?php include 'template/footer.php';?>
