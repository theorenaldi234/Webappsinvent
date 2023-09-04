<?php
include "config.php";
?>

<html>
<head>
  <title>Stock Barang</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
</head>

<body>
<div class="container">
			<h2>Stock Bahan</h2>
			<h4>(Inventory)</h4>
            <br>
        <form method="post" class="form-inline">
            <input type="date" name="tgl_mulai" class="form-control">
            <input type="date" name="tgl_selesai" class="form-control">
            <button type="submit" name="filter_tgl" class="btn btn-info">Simpan</button>
        </form>
				<div class="data-tables datatable-dark">
					<table class="table table-striped table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
               
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>IT On Duty</th>
                            <th>No. Nota</th>
                            <th>Lokasi</th>
                            <th>Lantai</th>
                            <th>Tipe Printer</th>
                            <th>Tipe Toner</th>
                            <th>Tanggal Input</th>
                            <th>Quantity</th>
                            <th>Catatan</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php

                             if (isset($_post['filter_tgl'])) {
                                 $mulai = $_POST['tgl_mulai'];
                                 $selesai = $_POST['tgl_selesai'];
                                $data_produk=mysqli_query($conn,"SELECT * FROM tb_nota l, laporan e
                                WHERE  e.no_nota=l.no_nota and tgl_input BETWEEN '$mulai' and DATE_ADD('$selesai') ORDER BY idnota DESC");
                             } else {
                                $data_produk=mysqli_query($conn,"SELECT * FROM tb_nota l, laporan e
                                WHERE  e.no_nota=l.no_nota ORDER BY idnota DESC");
                             }
                                
                                 $no=1;
                                while($d=mysqli_fetch_array($data_produk)){
                                    $idnota= $d['idnota'];
                                    $nota= $d['no_nota'];
                                    ?>
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td>
                                            <?php 
                                                $itungtrans = mysqli_query($conn,"SELECT nama_kasir as jumlahtrans
                                                 FROM laporan where no_nota='$nota'");
                                                $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                                $itungtrans3 = $itungtrans2['jumlahtrans'];
                                                echo $itungtrans3;
                                            ?>
                                        </td>
                                        <td><?php echo $d['no_nota'] ?></td>
                                        <td>
                                            <?php 
                                                $itungtrans = mysqli_query($conn,"SELECT id_printer as jumlahtrans
                                                 FROM laporan where no_nota='$nota'");
                                                $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                                $itungtrans3 = $itungtrans2['jumlahtrans'];
                                                echo $itungtrans3;
                                            ?>
                                        </td>
                                        <td>
                                        </td>
                                        <td><?php echo $d['kode_produk'] ?></td>
                                        <td><?php echo $d['kode_produk'] ?></td>
                                        <td><?php echo $d['tgl_input'] ?></td>
                                        <td><?php echo $d['quantity'] ?></td>
                                        <td>
                                            <?php 
                                                $itungtrans = mysqli_query($conn,"SELECT catatan as jumlahtrans
                                                 FROM laporan where no_nota='$nota'");
                                                $itungtrans2 = mysqli_fetch_assoc($itungtrans);
                                                $itungtrans3 = $itungtrans2['jumlahtrans'];
                                                echo $itungtrans3;
                                            ?>
                                         </td>
                                    </tr>       
                        <?php }?>
                    </tbody>
                </table>
					
					
				</div>
</div>
	
<script>
$(document).ready(function() {
    $('#table').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy','csv','excel', 'pdf', 'print'
        ]
    } );
} );

</script>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>

	

</body>

</html>