<?php include 'template/header.php';?>

<br>
<?php
            if(isset($_POST['tambahip_27']))
            {
                $ip_address = htmlspecialchars($_POST['ip_address']);
                $user = htmlspecialchars($_POST['user']);
                $port_location = htmlspecialchars($_POST['port_location']);
                $pc_mac_address = htmlspecialchars($_POST['pc_mac_address']);
                $port_name = htmlspecialchars($_POST['port_name']);
                $nama_switch = htmlspecialchars($_POST['nama_switch']);

                $tambahkat = mysqli_query($conn,"INSERT INTO ip_27 (ip_address,user,port_location,pc_mac_address,port_name,nama_switch,harga_jual)
                 values ('$ip_address','$user','$port_location','$pc_mac_address','$port_name','$nama_switch')");
                if ($tambahkat){
                    echo '<script>alert("Berhasil Menambahkan Data");window.location="ip_27.php"</script>';
                } else {
                    echo '<script>alert("Gagal Menambahkan Data");history.go(-1);</script>';
                }
                
            };

            if(isset($_POST['updateip_27'])){
                $idip = htmlspecialchars($_POST['idip']);
                $ip_address = htmlspecialchars($_POST['ip_address']);
                $user = htmlspecialchars($_POST['user']);
                $port_location = htmlspecialchars($_POST['port_location']);
                $pc_mac_address = htmlspecialchars($_POST['pc_mac_address']);
                $port_name = htmlspecialchars($_POST['port_name']);
                $nama_switch = htmlspecialchars($_POST['nama_switch']);

                mysqli_query($conn,"UPDATE ip_27 SET
                ip_address='$ip_address',pc_mac_address='$pc_mac_address',user='$user',port_location='$port_location',
                port_name='$port_name',nama_switch='$nama_switch' WHERE idip='$idip' ");
                echo '<script>alert("Berhasil Update prdouk");window.location="ip27.php"</script>';
            };
            ?>
<div class="card">
    <div class="card-header">
        <div class="card-tittle"><i class="fa fa-table me-2"></i> Data IP
        <button type="button" class="btn btn-primary btn-xs p-2 float-right" data-toggle="modal" data-target="#addip_27">
            <i class="fa fa-plus fa-xs mr-1"></i> Tambah IP</button></div>
    </div>
        <div class="card-body">
            <table class="table table-striped table-sm table-bordered dt-responsive nowrap" id="table" width="100%">
                <nav aria-label="...">
  <ul class="pagination pagination-sm">
    <li class="page-item active" aria-current="page">
      <span class="page-link">1</span>
    </li>
    <li class="page-item"><a class="page-link" href="#">S27</a></li>
    <li class="page-item"><a class="page-link" href="#">S28</a></li>
    <li class="page-item"><a class="page-link" href="#">S29</a></li>
    <li class="page-item"><a class="page-link" href="#">S30</a></li>
    <li class="page-item"><a class="page-link" href="#">SMitra</a></li>
  </ul>
</nav>
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>Ip Address</th>
                            <th>User</th>
                            <th>Port Location</th>
                            <th>Pc Mac Address</th>
                            <th>Port Name</th>
                            <th>Nama Switch</th>
                            <th>Opsi</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $no=1;
                                $data_produk5=mysqli_query($conn,"SELECT * FROM ip_27  order by idip ASC");
                                while($d=mysqli_fetch_array($data_produk5)){
                                    $idip = $d['idip'];
                                    ?>
                                    
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $d['ip_address'] ?></td>
                                        <td><?php echo $d['user'] ?></td>
                                        <td><?php echo $d['port_location'] ?></td>
                                        <td><?php echo $d['pc_mac_address'] ?></td>
                                        <td><?php echo $d['port_name'] ?></td>
                                        <td><?php echo $d['nama_switch'] ?></td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-xs"
                                             data-toggle="modal" data-target="#editP<?php echo $idip ?>">
                                             <i class="fa fa-pen fa-xs mr-1"></i>Edit</button>
                                            <a class="btn btn-danger btn-xs" href="?hapus=<?php echo $idip ?>" 
                                            onclick="javascript:return confirm('Hapus Data ip_27 - <?php echo $d['pc_mac_address'] ?> ?');">
                                            <i class="fa fa-trash fa-xs mr-1"></i>Hapus</a>
                                        </td>
                                    </tr>
                                    
                                    <!-- modal edit -->
                                    <div class="modal fade" id="editP<?php echo $idip ?>" tabindex="-1" role="dialog" aria-labelledby="ModalTittle2" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                            <form method="post">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="ModalTittle2"><i class="fa fa-shopping-bag mr-1 text-muted"></i> Edit IP</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group mb-2">
                                                    <label>IP Address :</label>
                                                    <input type="hidden" name="idip" class="form-control" value="<?php echo $d['idip'] ?>">
                                                    <input type="text" name="ip_address" class="form-control" value="<?php echo $d['ip_address'] ?>" >
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>User :</label>
                                                    <input type="hidden" name="idip" class="form-control" value="<?php echo $d['idip'] ?>">
                                                    <input type="text" name="user" class="form-control" value="<?php echo $d['user'] ?>" >
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Lokasi :</label>
                                                    <input type="hidden" name="idip" class="form-control" value="<?php echo $d['idip'] ?>">
                                                    <input type="text" name="port_location" class="form-control" value="<?php echo $d['port_location'] ?>" >
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Mac Address :</label>
                                                    <input type="text" name="pc_mac_address" class="form-control" value="<?php echo $d['pc_mac_address'] ?>" >
                                                </div>
                                                <div class="form-group mb-2">
                                                    <label>Port Name :</label>
                                                    <input type="text" name="pc_mac_address" class="form-control" value="<?php echo $d['port_name'] ?>" readonly>
                                                </div>
                                                <div class=""form-group mb-2>
                                                        <label>Switch :</label>
                                                        <input type="text" name="port_name" class="form-control" value="<?php echo $d['nama_switch'] ?>" readonly>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-light btn-xs p-2" data-dismiss="modal">
                                                    <i class="fa fa-times mr-1"></i> Batal</button>
                                                <button type="submit" class="btn btn-primary btn-xs p-2" name="updateip_27">
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
        $idip = $_GET['hapus'];
        $hapus_data = mysqli_query($conn, "DELETE FROM ip_27 WHERE idip='$idip'");
        if($hapus_data){
            echo '<script>alert("Berhasil Hapus Data ip_27");window.location="ip27.php"</script>';
        } else {
            echo '<script>alert("Gagal Hapus Data ip_27");history.go(-1);</script>';
        }
    };
    ?>
<!-- Modal -->
<div class="modal fade" id="addip_27" tabindex="-1" role="dialog" aria-labelledby="ModalTittle" aria-hidden="true">
<?php 
$query = mysqli_query($conn, "SELECT max(user) as kodeTerbesar FROM ip_27");
$data = mysqli_fetch_array($query);
$kodeBarang = $data['kodeTerbesar'];
$urutan = (int) substr($kodeBarang, 3, 3);
$urutan++;
$huruf = "BRG";
$kodeBarang = $huruf . sprintf("%03s", $urutan);
?>
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <form method="post">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalTittle"><i class="fa fa-shopping-bag mr-1 text-muted"></i> Tambah ip_27</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="form-group mb-2">
              <label>Kode ip_27 :</label>
              <input type="text" name="user" class="form-control" value="<?php echo $kodeBarang;?>">
          </div>
          <div class="form-group mb-2">
              <label>Lokasi :</label>
              <input type="text" name="port_location" class="form-control" required>
          </div>
          <div class="form-group mb-2">
              <label>Nama ip_27 :</label>
              <input type="text" name="pc_mac_address" class="form-control" required>
          </div>
          <div class="form-group mb-2">
              <label>Kategori ip_27 :</label>
                <select name="ip_address" class="form-control" required>
                <?php
                $dataK=mysqli_query($conn,"SELECT * FROM kategori ORDER BY nama_kategori ASC")or die(mysqli_error());
                while($dk=mysqli_fetch_array($dataK)){
                ?>
                    <option value="<?php echo $dk['ip_address'] ?>" class="small"><?php echo $dk['nama_kategori'] ?></option>
                    <?php } ?>
                </select>
          </div>
          <div class="row mb-2">
              <div class="col-2 col-md-2 pr-0">
                <label>port_name :</label>
                <input type="number" name="port_name" class="form-control" required>
              </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light btn-xs p-2" data-dismiss="modal">
            <i class="fa fa-times mr-1"></i> Batal</button>
        <button type="reset" class="btn btn-danger btn-xs p-2">
        <i class="fa fa-trash-restore-alt mr-1"></i> Reset</button>
        <button type="submit" class="btn btn-primary btn-xs p-2" name="tambahip_27">
        <i class="fa fa-plus-circle mr-1"></i> Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>
<?php include 'template/footer.php';?>
