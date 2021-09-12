<?php
session_start();
include "../../../../assets/koneksi.php";
require_once("../../../../assets/dompdf/src/Autoloader.php");
Dompdf\Autoloader::register();
use Dompdf\Dompdf;

if (isset($_GET['bulan'])) {
  $bulan = $_GET['bulan'];
  $tahun = $_GET['tahun'];
  $perintah="SELECT * From guru where month(tmt)='$bulan' and year(tmt)='$tahun'";
  $print = "?bulan=".$bulan."&tahun=".$tahun;
  $tmt = "TMT Bulan ".$nama_bulan[$bulan].' '.$tahun;
  $tmt = strtoupper($tmt);

 }else{
  $perintah="SELECT * From guru";
  $print = '';
  $tmt = "SEMUA TMT";

 }



$html = '

<center>
  <h3>LAPORAN DATA GURU SDN 15 PADANG PASIR <br>'.$tmt.'</h3>
</center>
<hr>  
    ';




$html .= '
 <table style="font-size:12px;border-collapse: collapse; width:100%" border = 1>
    <thead>
      <tr>
        <td>No</td>
        <td>NIP</td>
        <td>Nama</td>
        <td>Tempat /Tanggal Lahir</td>
        <td>JK</td>
        <td>Pangkat / Gol</td>
        <td>TMT</td>
        <td>Jabatan</td>
        <td>Ijazah Tahun</td>
        <td>Alamat</td>
      </tr>

';
  $jalan=mysqli_query($conn, $perintah)or die(mysqli_error());
$no = 1;
while ($data=mysqli_fetch_array($jalan))
{ 
  $html .= '
      <tr>
        <td>'.$no++.'</td>
        <td>'.$data['nip'].'</td>
        <td>'.$data['nama_guru'].'</td>
        <td>'.$data['tmpl'].' / '.$data['tgll'].'</td>
        <td>'.$data['jk'].'</td>
        <td>'.$data['gol'].'</td>
        <td>'.$data['tmt'].'</td>
        <td>'.$data['jabatan'].'</td>
        <td>'.$data['ijazah_tahun'].'</td>
        <td>'.$data['alamat'].'</td>
      </tr>

';

}


  $html .= '
  </table>
  <br>
    <div style="float:right;text-align:center">
    Padang, '.date('d').' '.$nama_bulan[date('m')].' '.date('Y').'<br>
    Kepala  SD Nageri 15 Padang Pasir
 <br> <br> <br> <br>
ROHANI, S.Pd <br>
NIP : 19660821 199005 2 001
    </div>

';


$dompdf = new Dompdf();

$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();
$dompdf->stream('Data Guru '.$tmt.'.pdf', ['Attachment'=>0]);

?>
<p style="font-size: "></p>

