<?php
session_start();
include "../../../../assets/koneksi.php";
require_once("../../../../assets/dompdf/src/Autoloader.php");
Dompdf\Autoloader::register();
use Dompdf\Dompdf;

$id_ta_aktif = $_GET['id_ta'];
$id_kelas = $_GET['id_kelas'];
$semester_ke = $_GET['semester'];
$id_wk = $_SESSION['id_user'];
$semester = [1=>'Ganjil','Genap'];




$qta = mysqli_query($conn, "SELECT * from tahun_ajaran where id_ta='$id_ta_aktif' and semester='$semester_ke'");
$jta = mysqli_num_rows ($qta);
$dta = mysqli_fetch_array($qta);
$id_ta = $dta['id_ta'];
$status_ta = $dta['status_ta'];
$semester_aktif = $dta['semester'];
$qkelas = mysqli_query($conn, "SELECT * from kelas where id_kelas='$id_kelas'");
$dkelas = mysqli_fetch_array($qkelas);


$qcekwk = mysqli_query($conn, "SELECT b.nama_guru, a.status_wali_kelas, a.id_guru, b.nip, a.username, a.id_walikelas from wali_kelas a left join guru b on a.id_guru = b.id_guru where a.id_kelas='$id_kelas' order by id_walikelas desc limit 1");
$jcekwk = mysqli_num_rows($qcekwk);
$dcekwk = mysqli_fetch_array($qcekwk);
$id_wk_aktif = $dcekwk['id_guru'];
$id_wali_kelas = $dcekwk['id_walikelas'];




$html = '

<center>
  <h3>LAPORAN ABSENSI SISWA PERKELAS</h3>
</center>
<hr>  
<table style="font-size:14px;border-collapse: collapse;" >
   <tr>
        <td width = "200px">Kelas</td>
        <td>'.$dkelas['tingkat'].' - '.$dkelas['nama_kelas'].'</td>
      </tr>
    ';


if ($jta==0) {
            $qta_selesai = mysqli_query($conn, "SELECT * from tahun_ajaran where id_ta='$id_ta_aktif'");
            $dta_selesai = mysqli_fetch_array($qta_selesai);

$html .= '


   <tr>
        <td width = "200px">Tahun Ajaran</td>
        <td>'.$dta_selesai['nama_ta'].'</td>
      </tr>
   <tr>
        <td width = "200px">Semester</td>
        <td>'.$semester[$semester_ke].'</td>
      </tr>
      </table>
      
    ';


            }
            else{

$html .= '


   <tr>
        <td width = "200px">Tahun Ajaran</td>
        <td>'.$dta['nama_ta'].'</td>
      </tr>
   <tr>
        <td width = "200px">Semester</td>
        <td>'.$semester[$dta['semester']].'</td>
      </tr>

   <tr>
        <td width = "200px">Wali Kelas</td>
        <td>'.$dcekwk['nama_guru'].'</td>
      </tr>
      </table>
      
    ';
            }



$html .= '
<br>';
$tingkat = $dkelas['tingkat']; 
$qmapel = mysqli_query($conn, "SELECT * from mapel where tingkat='$tingkat' ");
$jmapel = mysqli_num_rows($qmapel); 
$kumpulkan_mapel = [];
while ($dmapel = mysqli_fetch_array($qmapel)) {
  $data = [
    'id_mapel'=>$dmapel['id_mapel'],
    'nama_mapel'=>$dmapel['nama_mapel'],
    'kkm'=>$dmapel['kkm']
  ];
  array_push($kumpulkan_mapel, $data);
}



$html .= '
 <table style="font-size:12px;border-collapse: collapse; width:100%" border = 1>
    <thead>
      <tr>
      <th rowspan="2"  width="20px">No</th>
        <th rowspan="2"  width="50px">NIS</th>
        <th rowspan="2">Nama siswa</th>
        <th rowspan="2" width="50px">Jenis Kelamin</th>
        <th colspan="4"><center>Ketidak Hadiran</center></th>
      </tr>
      <tr>
      <td width="50px">Sakit</td>
      <td width="50px">Izin</td>
      <td width="50px">Tanpa Keterangan</td>
      <td width="50px">Total</td>
      </tr>
        
     

';










$no=1;
$mapel = mysqli_query($conn, "SELECT a.status_ks, a.id_siswa,  b.nama_siswa, b.nis, b.nisn, b.jk, b.agama, b.tmpl, b.tgll, c.tingkat
 from kelas_siswa a
 left join siswa b on a.id_siswa = b.id_siswa
 left join kelas c on a.id_kelas = c.id_kelas
  where a.id_kelas='$id_kelas' and a.id_ta='$id_ta_aktif'");
  while ($data=mysqli_fetch_array($mapel))
  { 
$pt = explode('-', $data['tgll']);
$tgll = $pt[2].'-'.$pt[1].'-'.$pt[0];
$html .= '
   <tr>     
  ';
$html .= '
  <td>'.$no++.'</td>
  

    
  <td>'.$data['nis'].'</td>
  <td>'.$data['nama_siswa'].'</td>
  <td>'.$data['jk'].'</td>';

    $id_siswa = $data['id_siswa'];
  $q_absen = mysqli_query($conn, "SELECT * from absensi where id_kelas='$id_kelas' and id_siswa='$id_siswa' and id_ta='$id_ta_aktif' and semester='$semester_ke'");
  $d_absen = mysqli_fetch_array($q_absen);


  $sakit= $d_absen['sakit']=='' ? 0 : $d_absen['sakit'];
  $izin= $d_absen['izin']=='' ? 0 : $d_absen['izin'];
  $alfa= $d_absen['alfa']=='' ? 0 : $d_absen['alfa'];
  $total_absen = $sakit + $izin + $alfa ; 
$html .= '
 

    
  <td>'.$sakit.'</td>
  <td>'.$izin.'</td>
  <td>'.$alfa.'</td>
  <td>'.$total_absen.'</td>';
 





$html .= '
   </tr>     
  ';
}

  $html .= '
  </table>
  <br>
    <div style="float:right;text-align:center; font-size:12px">
    Padang, '.date('d').' '.$nama_bulan[date('m')].' '.date('Y').'<br>
    Mengetahui, Wali Kelas '.$dkelas['tingkat'].' - '.$dkelas['nama_kelas'].'
 <br> <br> <br> <br>
'.$dcekwk['nama_guru'].' <br>
NIP : '.$dcekwk['nip'].'
    </div>


    <div style="float:left;text-align:center; font-size:12px">
   <br>
       Kepala  SD Nageri 15 Padang Pasir
 <br> <br> <br> <br>
ROHANI, S.Pd <br>
NIP : 19660821 199005 2 001
    </div>

';

$dompdf = new Dompdf();

$dompdf->loadHtml($html);
$dompdf->render();
$dompdf->stream('Data Absensi Siswa kelas '.$dkelas['tingkat'].' - '.$dkelas['nama_kelas'].'.pdf', ['Attachment'=>0]);

?>
<p style="font-size: "></p>

