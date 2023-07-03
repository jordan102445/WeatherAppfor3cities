<?php
$con = mysqli_connect("localhost","root","");
if($con === FALSE) die ("Нема Конекција");
if(mysqli_select_db($con,"temp za stip,skopje,strumica") === FALSE)
die ("Нема Конекција");
?>
