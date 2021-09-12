<?php 
  // $conn = mysqli_connect('sql205.epizy.com','epiz_28254287','ank6FEcgIikV','epiz_28254287_sd15');
  $conn = mysqli_connect('localhost','root','','sd_15_with_data');
  date_default_timezone_set('Asia/Jakarta');
  error_reporting(0);
  $nama_bulan = [
  '01'=>'January',
  '02'=>'February',
  '03'=>'Maret',
  '04'=>'April',
  '05'=>'Mei',
  '06'=>'Juni',
  '07'=>'Juli',
  '08'=>'Agustus',
  '09'=>'September',
  '10'=>'Oktober',
  '11'=>'November',
  '12'=>'Desember'
];
 ?>