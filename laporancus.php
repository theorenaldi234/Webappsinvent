
<?php include 'template/header.php';?>
<br>
<div class="card">
    <div class="card-header">
        <div class="card-tittle">
            <i class="fa fa-table me-2"></i>Out Logistik
        </div>
    </div>
        <div class="card-body">
            <table class="table table-striped table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
                <nav aria-label="...">
  <ul class="pagination pagination-sm">
    <li class="page-item active" aria-current="page">
      <span class="page-link">1</span>
    </li>
    <li class="page-item"><a class="page-link" href="outlog.php">Detail Laporan Out</a></li>
  </ul>
</nav>
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>Person On Demand</th>
                            <th>User</th>
                            <th>Qty</th>
                            <th>Catatan</th>
                            <th>SubTotal</th>
                            <th>Tanggal</th>
                            <th>Opli</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $no=1;
                                $data_produk=mysqli_query($conn,"SELECT * FROM laporancus l, pelanggan e
                                WHERE  e.idpelanggan=l.idpelanggan ORDER BY idlaporan ASC");
                                while($d=mysqli_fetch_array($data_produk)){
                                    $idlaporan= $d['idlaporan'];
                                    $nota= $d['no_nota'];
                                    ?>
                                    
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $d['nama_kasir'] ?></td>
                                        <td><?php echo $d['nama_pelanggan'] ?></td>
                                        <td><?php 
                                            $itungtrans = mysqli_query($conn,"SELECT SUM(quantity) as jumlahtrans
                                             FROM tb_notacus where no_nota='$nota'");
                                            $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                            $itungtrans3 = $itungtrans2['jumlahtrans'];
                                            echo $itungtrans3;
                                        ?></td>
                                         <td class="catatan"><?php echo $d['catatan'] ?></td>
                                         <td>Rp.<?php echo ribuan($d['totalbeli']) ?></td>
                                        <td><?php echo $d['tgl_sub'] ?></td>
                                        <td>
                                        <a class="btn btn-primary btn-xs" href="detailcus.php?invoice=<?php echo $nota ?>">
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
        $hapus_data = mysqli_query($conn, "DELETE FROM laporancus WHERE no_nota='$nota'");
        $hapus_data1 = mysqli_query($conn, "DELETE FROM tb_notacus WHERE no_nota='$nota'");
        if($hapus_data&&$hapus_data1){
            echo '<script>alert("Berhasi Hapus data laporan");window.location="laporancus.php"</script>';
        } else {
            echo '<script>alert("gagal Hapus data laporan");history.go(-1);</script>';
        }
    };
    ?>
<?php include 'template/footer.php';?>
