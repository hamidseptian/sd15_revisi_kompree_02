<?php

$ta=$_POST['ta'];

 $qta = mysqli_query($conn, "SELECT * from tahun_ajaran where id_ta='$ta'");
          $jta = mysqli_num_rows ($qta);
          $dta = mysqli_fetch_array($qta);
          $id_ta = $dta['id_ta'];


?>
<div class="box-header with-border">
  <h3 class="box-title">
    Data Hutang Piutang <br>
    Tahun Ajaran <?php echo $dta['nama_ta'] ?>

  </h3>
<div class="pull-right">

    <a href="form/pengambilan/print_hutang_per_tahun_ajaran.php?id_ta=<?php echo $id_ta ?>" class=" btn btn-info btn-sm" target="_blank">Print Hutang Piutang Tahun Ajaran <?php echo $dta['nama_ta'] ?></a>
      <a href="?a=pengambilan" class="btn btn-info btn-sm"  >Kembali</a>
    </div>
  
</div>
<div class="clearfix"></div>



<?php



  
 
  $no=1;
?>

<div class="col-md-12">

  <table class="table table-striped table-bordered" id="example1" width="100%">
  	<thead>
  	<tr>
  		<td>No</td>
      <td>Nama</td>
      <td>NIS</td>
      <td>Kelas Aktif</td>
      <td>Hutang</td>
      <td>Dibayar</td>
      <td>Sisa</td>
  		<td>Option</td>
  	</tr>
  </thead>
  	

  <?php
$q_siswa = mysqli_query($conn, "SELECT 
    s.nama_siswa, s.nis, s.alamat, s.no_telp, s.id_siswa,
    k.tingkat, k.nama_kelas 
    from kelas_siswa ks
    left join siswa s on ks.id_siswa = s.id_siswa
    left join kelas k on ks.id_kelas = k.id_kelas
    left join tahun_ajaran ta on ks.id_ta = ta.id_ta
    where s.status_siswa = 'Aktif'
    and ta.id_ta='$ta'
    group by id_ks");
  while ($data=mysqli_fetch_array($q_siswa))
  { 
    $id_siswa = $data['id_siswa'];
 $q2=mysqli_query($conn, "SELECT count(id_pengambilan) as qty, sum(biaya) as biaya from pengambilan where id_siswa='$id_siswa'
    ");
      $d2 = mysqli_fetch_array($q2);
      $q3=mysqli_query($conn, "SELECT sum(jumlah) as dibayar from pembayaran where id_siswa='$id_siswa'
    ");
      $d3 = mysqli_fetch_array($q3);
        $hutang = $d2['biaya'];
    $dibayar = $d3['dibayar'] =='' ? 0 : $d3['dibayar'];
    $sisa = $hutang - $dibayar;
  ?>
  	<tr>
  		<td><?php echo $no++; ?></td>
    <td><?php echo $data['nama_siswa']; ?></td>

      <td><?php echo $data['nis'] ?></td>
      <td><?php echo $data['tingkat'].' - '.$data['nama_kelas'] ?></td>
    <td><?php echo number_format($hutang) ?></td>
    <td><?php echo number_format($dibayar) ?></td>
    <td><?php echo number_format($sisa) ?></td>  
  	
  	<td>
      <a href="?a=detail_pengambilan&id_siswa=<?php echo $data['id_siswa'] ?>&menu=filter&id_kelas=<?php echo $id ?>&id_ta=<?php echo $ta ?>" class="btn btn-info btn-xs">Detail Hutang Piutang</a>
  	</td>
  		</tr>

  		<?php } ?>
  				
  	</table>
</div>