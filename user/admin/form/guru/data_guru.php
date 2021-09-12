<?php 
if (isset($_GET['bulan'])) {
	$bulan = $_GET['bulan'];
	$tahun = $_GET['tahun'];
 	$perintah="SELECT * From guru where month(tmt)='$bulan' and year(tmt)='$tahun'";
 	$print = "?bulan=".$bulan."&tahun=".$tahun;

 }else{
 	$perintah="SELECT * From guru";
 	$print = '';

 } ?>




<div class="box-header with-border">
  <h3 class="box-title">
    Data Guru
  </h3>
  <div class="pull-right">
  	    <a href="" class=" btn btn-info btn-sm"  data-toggle="modal" data-target="#filter">Filter</a>
    <a href="form/guru/print_guru.php<?php echo $print ?>" class=" btn btn-info btn-sm" target="_blank">Print Data Guru</a>
    <a href="?a=tambah_guru" class=" btn btn-info btn-sm" >Tambah Data</a>
  </div>
  
</div>


<form action="" method="get"  enctype="multipart/form-data">
<div class="modal fade" id="filter">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Filter</h4>
              </div>
              <div class="modal-body">
              	<input type="hidden" name="a" value="guru">
              <div class="form-group">
                  <label>Kelas</label>
                  <select name="bulan" class="form-control">
                    <?php
                      foreach ($nama_bulan as $k =>$v) { ?>
                        <option value="<?php echo$k ?>"><?php echo $v ?></option>
                      <?php } ?>
                    
                  </select>
              </div>
              <div class="form-group">
                  <label>Tahun</label>
                  <select name="tahun" class="form-control">
                    <?php
                      $kelas = [1,2,3,4,5,6];
                     for ($i=date('Y'); $i > 2000; $i--) { ?>
                        <option value="<?php echo $i ?>"><?php echo $i ?></option>
                      <?php } ?>
                    
                  </select>
              </div>
           
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Filter</button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>


<?php



  
    $jalan=mysqli_query($conn, $perintah)or die(mysqli_error());

  $total = mysqli_num_rows($jalan);
  $no=1;
?>
<table class="table table-striped table-bordered" id="tabelscrol" border="1">
	<thead>
	<tr>
    <td>No</td>
    <td>Nama</td>
    <td>Tempat /Tanggal Lahir</td>
    <td>NIP</td>
    <td>JK</td>
    <td>Pangkat / Gol</td>
    <td>TMT</td>
    <td>Jabatan</td>
    <td>Ijazah Tahun</td>
    <td>Alamat</td>
    <td>Status</td>
    <td>Option</td>
  </tr>
</thead>
	

<?php

while ($data=mysqli_fetch_array($jalan))
{ 
$idguru = $data['id_guru'];
$q = mysqli_query($conn, "SELECT a.id_guru, a.status_wali_kelas from wali_kelas a where  a.status_wali_kelas='1' and a.id_guru = '$idguru'");
$d = mysqli_fetch_array($q);


?>
	<tr>
		<td><?php echo $no++; ?></td>
    <td><?php echo $data['nama_guru'] ?></td>
    <td>
        <?php
        echo $data['tmpl'].' / ';
        $xptgll= explode('-', $data['tgll']);
        echo $tgll = $xptgll[2].'-'.$xptgll[1].'-'.$xptgll[0];

         ?>
            
    </td>
    <td><?php echo $data['nip'] ?></td>
    <td><?php echo $data['jk'] ?></td>
    <td><?php echo $data['gol'] ?></td>
    <td>
        <?php 
         $xptmt= explode('-', $data['tmt']);
        echo $tmt = $xptmt[2].'-'.$xptmt[1].'-'.$xptmt[0];
         ?>
            
    </td>
    <td><?php echo $data['jabatan'] ?></td>
    <td><?php echo $data['ijazah_tahun'] ?></td>
    <td><?php echo $data['alamat'] ?></td>
    <td><?php 
        if ($idguru==$d['id_guru']) {
            echo "Sedang menjadi wali kelas";
        }
    ?></td>
	<td>
    <a href="?a=edit_guru&id=<?php echo $data['id_guru'] ?>" class="btn btn-warning btn-xs">Edit</a> 
    <?php  if ($idguru!=$d['id_guru']) { ?>
    <a href="form/guru/hapus_guru.php?id=<?php echo $data['id_guru'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Hapus data atas nama <?php echo $data['nama_guru'] ?>.?')">Hapus</a> 
<?php } ?>
	</td>
		</tr>



		<?php } ?>
				
	</table>
