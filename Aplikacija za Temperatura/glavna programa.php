<?php

include "conn so bazata.php";
error_reporting(0);

?>



<html lang="mkd">
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>МainStrana</title>

        <link rel="stylesheet" href="boostrap/bootstrap.min.css">
        <link rel="stylesheet" href="dizajn.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        <link rel="stylesheet" href="boostrap/bootstrap.min.css">
        <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
    </head>

    <body>

      <section class="article">
                  <div class="container py-5" id="listanakoli">
                    <h1 class="text-center">Одберете град:</h1><br>
                    <div class="row">


        <?php
        require_once "conn so bazata.php";
        session_start();

                  $query = "SELECT `idNaGrad`, `ImeNaGrad`, `PostenskiBroj`, `slikaGrad` FROM `temperatura za 3 grada` order by idNaGrad ASC";


                  $queryfire = mysqli_query($con,$query);

                  $num = mysqli_num_rows($queryfire);

                  if($num > 0){

                while($tempr = mysqli_fetch_array($queryfire)){
// sekoj grad si ima posebno id i se otvara so posebno id po pretiskanje na kopceto na primer  Штип id 1 Скопје id 2 Струмуца id3

 ?>
            <div class="col-lg-4 wow bounceIn" data-wow-delay="0.3s">
                                <div class="card">
                                  <img src="<?php echo $tempr['slikaGrad'];?>" alt="" class="img-fluid">
                                  <p class="pt-3" ><a href="gradpograd.php?id=<?php echo $tempr['idNaGrad'];?>"> <?php echo $tempr['ImeNaGrad']; ?></a></p><br>
                                  <span id="cost"> <?php echo $tempr['PostenskiBroj']; ?> поштенски број</span>

                                </div>
                              </div>
                              

                             </form>


                              <?php
                            }
                                            }

                                               ?>


  </section>



</body>
</html>
