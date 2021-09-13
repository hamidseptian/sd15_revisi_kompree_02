<?php
session_start();
include "../../../../assets/koneksi.php";
require_once("../../../../assets/dompdf/src/Autoloader.php");
Dompdf\Autoloader::register();
use Dompdf\Dompdf;

$id_siswa = $_GET['id_siswa'];





  $perintah="SELECT * From siswa where id_siswa='$id_siswa'";
  $jalan=mysqli_query($conn, $perintah);
  $d1=mysqli_fetch_array($jalan);


$html = '

<center>
  <h3>LAPORAN HUTANG PIUTANG SISWA</h3>
</center>
<hr>  
 <table class="table" style="font-size:12px">
        <tr>
          <td>Nama</td>
          <td>:</td>
          <td>'.$d1['nama_siswa'].'</td>
        </tr>
        <tr>
          <td>NIS</td>
          <td>:</td>
          <td>'.$d1['nis'].'</td>
        </tr>
        <tr>
          <td>NISN</td>
          <td>:</td>
          <td>'.$d1['nisn'].'</td>
        </tr>
        <tr>
          <td>Jenis Kelamin</td>
          <td>:</td>
          <td>'.$d1['jk'].'</td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td>:</td>
          <td>'.$d1['alamat'].'</td>
        </tr>
        <tr>
          <td>No HP</td>
          <td>:</td>
          <td>'.$d1['no_telp'].'</td>
        </tr>
      </table>
    ';





$html .= '
<br>';


$html .= '
 <table style="font-size:12px;border-collapse: collapse; width:100%" border = 1>
       <thead>
          <tr>
          <td>No</td>
          <TD>Waktu Transaksi</TD>
          <td>Kategori</td>
          <td>Keterangan</td>
          <td>Hutang</td>
          <td>Sudah Dibayar</td>
        </tr>
       </thead>
     

';

$qambil = mysqli_query($conn, "SELECT * from pengambilan where id_siswa='$id_siswa'");
$j_ambil = mysqli_num_rows($qambil);
 $kumpuldata = [];
       
       while ($dambil = mysqli_fetch_array($qambil)) {
         $data = [
          'id'=>$dambil['id_pengambilan'],
          'keterangan'=>$dambil['barang'],
          'kategori'=>'Pengambilan',
          'debit'=>$dambil['biaya'],
          'kredit'=>0,
          'waktu_transaksi'=>$dambil['waktu_pengambilan'],
         ];
         array_push($kumpuldata,$data);
       }

       $q_pemb = mysqli_query($conn, "SELECT * from pembayaran where id_siswa='$id_siswa'");
       while ($dpemb = mysqli_fetch_array($q_pemb)) {
         $data = [
          'id'=>$dpemb['id_pembayaran'],
          'keterangan'=>$dpemb['keterangan'],
          'kategori'=>'Pembayaran',
          'debit'=>0,
          'kredit'=>$dpemb['jumlah'],
          'waktu_transaksi'=>$dpemb['tanggal_bayar'],
         ];
         array_push($kumpuldata,$data);
       }
       // arsort($kumpuldata);
       $totdebit = 0 ;
       $totkredit = 0 ;
$no=1;    
foreach ($kumpuldata as $key => $value) { 
        $totdebit += $value['debit'];
        $totkredit += $value['kredit'];
        $html .='
          <tr>
          <td>'.$no++.'</td>
          <td>'.$value['waktu_transaksi'].'</td>
          <td>'.$value['kategori'].'</td>
          <td>'.$value['keterangan'].'</td>
          <td>'.number_format($value['debit']).'</td>
          <td>'.number_format($value['kredit']).'</td>
          
        </tr>';
  }

 $sisa = $totdebit - $totkredit ; 

 $html .='<tr>
          <td colspan="4">Total</td>
          <td>'.number_format($totdebit).'</td>
          <td>'.number_format($totkredit).'</td>
         
        </tr>
      ';
 $html .='<tr>
          <td colspan="4">Sisa</td>
          <td colspan="2">'.number_format($sisa).'</td>
         
        </tr>
      ';

  $html .= '
  </table>
  <br>
    <div style="float:right;text-align:center; font-size:12px">
    Padang, '.date('d').' '.$nama_bulan[date('m')].' '.date('Y').'<br>
    Bendahara
 <br> <br> <br> <br>
Vivit Triani <br>
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
$dompdf->stream('Data Hutang Piutang Siswa '.$d1['nama_siswa'].'.pdf', ['Attachment'=>0]);

?>
<p style="font-size: "></p>

