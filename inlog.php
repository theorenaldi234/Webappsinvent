
<?php include 'template/header.php';?>
<br>
<div class="card">
    <div class="card-header">
        <div class="card-tittle">
            <i class="fa fa-table me-2"></i>In Logistik
        </div>
    </div>
        <div class="card-body">
            <table class="table table-striped table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
                <nav aria-label="...">
  <ul class="pagination pagination-sm">
    <li class="page-item"><a class="page-link" href="laporanlog.php">Laporan Logistik</a></li><li class="page-item active" aria-current="page">
      <span class="page-link">2</span>
    </li>
  </ul>
</nav>
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>No. Nota</th>
                            <th>Person On Demand</th>
                            <th>Tanggal Input</th>
                            <th>Quantity</th>
                            <th>Catatan</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $no=1;
                                $data_produk=mysqli_query($conn,"SELECT * FROM tb_notalog l, produk e
                                WHERE  e.idproduk=l.idproduk ORDER BY idnota DESC");
                                while($d=mysqli_fetch_array($data_produk)){
                                    $idnota= $d['idnota'];
                                    $nota= $d['no_nota'];
                                    ?>
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $d['no_nota'] ?></td>
                                        <td><?php echo $d['kode_produk'] ?></td>
                                        <td><?php 
                                                $itungtrans = mysqli_query($conn,"SELECT tgl_sub as jumlahtrans
                                                 FROM laporanlog where no_nota='$nota'");
                                                $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                                $itungtrans3 = $itungtrans2['jumlahtrans'];
                                                echo $itungtrans3;
                                            ?></td>
                                        <td><?php echo $d['quantity'] ?></td>
                                        <td>
                                        <?php 
                                            $itungtrans = mysqli_query($conn,"SELECT catatan as jumlahtrans
                                             FROM laporanlog where no_nota='$nota'");
                                            $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                            $itungtrans3 = $itungtrans2['jumlahtrans'];
                                            echo $itungtrans3;
                                        ?></td>
                                    </tr>       
                        <?php }?>
                    </tbody>
                </table>
        </div>
</div>

<?php 
    if(!empty($_GET['hapus'])){
        $nota = $_GET['hapus'];
        $hapus_data = mysqli_query($conn, "DELETE FROM laporanlog WHERE no_nota='$nota'");
        $hapus_data1 = mysqli_query($conn, "DELETE FROM tb_nota WHERE no_nota='$nota'");
        if($hapus_data&&$hapus_data1){
            echo '<script>alert("Berhasi Hapus data laporan");window.location="laporanlog.php"</script>';
        } else {
            echo '<script>alert("gagal Hapus data laporan");history.go(-1);</script>';
        }
    };
    ?>
<?php include 'template/footer.php';?>
