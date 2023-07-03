<?php

include "conn so bazata.php";
error_reporting(0);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stilozagradpograd.css">

    <title>Stepeni</title>
</head>

<body>

<form action="" method="POST">



  <?php
  require_once "conn so bazata.php";
  session_start();


  $id=$_GET['id']; // gradovite se selektiraat po id
          $query = "SELECT * FROM `temperatura za 3 grada` WHERE idNaGrad='$id'";


          $queryfire = mysqli_query($con,$query);

          $num = mysqli_num_rows($queryfire);

          if($num > 0){

            while($tempr = mysqli_fetch_array($queryfire)){


              $grad= $tempr['ImeNaGrad'];
              //$mojotapikey='&appid=3797821ada1d4de6d62f3ed64a285663';
              $api="https://api.openweathermap.org/data/2.5/forecast?q=".$grad."&appid=3797821ada1d4de6d62f3ed64a285663";
              //$mojotapikey1='https://api.openweathermap.org/data/2.5/forecast?q='.$grad.'&appid='.$mojotapikey;
              $json=file_get_contents($api);
              $data=json_decode($json);



              $vremetoden1 = $data->list[0]->main->temp;
              $vremeto_vo_C_den1=round($vremetoden1 - 273.15);//ponedelnik
              $vremetoden2 = $data->list[1]->main->temp;
              $vremeto_vo_C_den2=round($vremetoden2 - 273.15);//vtornik
              $vremetoden3 = $data->list[2]->main->temp;
              $vremeto_vo_C_den3=round($vremetoden3 - 273.15);//sreda
              $vremetoden4 = $data->list[3]->main->temp;
              $vremeto_vo_C_den4=round($vremetoden4 - 273.15);//cetvrtok
              $vremetoden5 = $data->list[4]->main->temp;
              $vremeto_vo_C_den5=round($vremetoden5 - 273.15);//petok
              $vremetoden6 = $data->list[5]->main->temp;
              $vremeto_vo_C_den6=round($vremetoden6- 273.15);//sabota
              $vremetoden7= $data->list[6]->main->temp;
              $vremeto_vo_C_den7=round($vremetoden7- 273.15);//nedela
              //foreach cikluso ne mi rabotese kako sto treba
              // kelvin = 273.15 i go odzimame so odredenata dobiena vrednost na denovite
              // koga presmetav nemase temperatura koja sto e pogolema od 25
            ?>






   <center>
    <table>
       <tr>
           <th><h2><?php echo $tempr['ImeNaGrad'];?></h2></th>
           <th><h2>Денови</h2></th>
           <th><h2>Степени</h2></th>
        </tr>
        <tr>
        <td>1</td>
        <td><h4 id="den1">Понеделник</h4></td>
        <td><h4 name="den1Stepeni"><?php echo $vremeto_vo_C_den1  ?></h4></td>
        </tr>

        <tr>
        <td>2</td>
        <td><h4 id="den2">Вторник</h4></td>
        <td><h4 name="den2Stepeni"><?php echo $vremeto_vo_C_den2 ?></h4></td>
        </tr>

        <tr>
        <td>3</td>
        <td><h4 id="den3">Среда</h4></td>
        <td><h4 name="den3Stepeni"><?php echo $vremeto_vo_C_den3 ?></h4></td>
        </tr>

        <tr>
        <td>4</td>
        <td><h4 id="den4">Четврток</h4></td>
        <td><h4 name="den4Stepeni"><?php echo $vremeto_vo_C_den4 ?></h4></td>
        </tr>

        <tr>
        <td>5</td>
        <td><h4 id="den5">Петок</h4></td>
        <td><h4 name="den5Stepeni"><?php echo $vremeto_vo_C_den5 ?></h4></td>
        </tr>

        <tr>
        <td>6</td>
        <td><h4 id="den6">Сабота</h4></td>
        <td><h4 name="den6Stepeni"><?php echo $vremeto_vo_C_den6 ?></h4></td>
        </tr>

        <tr>
        <td>7</td>
        <td><h4 id="den7">Недела</h4></td>
        <td><h4 name="den7Stepeni"><?php echo $vremeto_vo_C_den7 ?></h4></td>
        </tr>





</table>


<?php
//po pretiskanje na kopceto prati site stepeni celzjusovi odat vo posebnite tabeli za stip strumica i skopje

if(isset($_POST['Prati']))
{
$sql = "INSERT INTO `stepenizasedumdenavonedelatashtip`(`Понеделинк`, `Вторник`, `Среда`, `Четврток`, `Петок`, `Сабота`, `Недела`) VALUES ('$vremeto_vo_C_den1','$vremeto_vo_C_den2','$vremeto_vo_C_den3','$vremeto_vo_C_den4','$vremeto_vo_C_den5','$vremeto_vo_C_den6','$vremeto_vo_C_den7')";
$rez1=mysqli_query($con,$sql);
if($rez1)
{


  $sql1 ="INSERT INTO `stepenizasedumdenavonedelataskopje`(`Понеделинк`, `Вторник`, `Среда`, `Четврток`, `Петок`, `Сабота`, `Недела`) VALUES ('$vremeto_vo_C_den1','$vremeto_vo_C_den2','$vremeto_vo_C_den3','$vremeto_vo_C_den4','$vremeto_vo_C_den5','$vremeto_vo_C_den6','$vremeto_vo_C_den7')";
  $rez2= mysqli_query($con,$sql1);
}

if($rez2)
{


  $sql2 ="INSERT INTO `stepenizasedumdenavonedelatastrumica`(`Понеделинк`, `Вторник`, `Среда`, `Четврток`, `Петок`, `Сабота`, `Недела`) VALUES ('$vremeto_vo_C_den1','$vremeto_vo_C_den2','$vremeto_vo_C_den3','$vremeto_vo_C_den4','$vremeto_vo_C_den5','$vremeto_vo_C_den6','$vremeto_vo_C_den7')";
  $rez3= mysqli_query($con,$sql2);
}



}
 ?>

<center>
<input type="submit" name="Prati" value="Додади во базата">
</center>





      <?php
      }
                    }

                       ?>
