<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
  <head>
    <link href="css/Q10b-XML.css" rel="stylesheet" type="text/css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <title>Cinema de France</title>
  </head>
  <body>
    <?php include('header.php') ?>
    <div class="section section1">
      <div class="nav">
        <h2>TOUS LES CINEMAS</h2>
      </div>
    </div>
    <div class="section section3">
    <?php include('connectionBD.php') ?>
    <?php $reponse = $bd->query('SELECT * FROM cinema');
     $donnee = $reponse->fetchAll();
     ?>
     <?php
     foreach($donnee as $cinema){
       echo '<div class="Listcinema">
                <div class="informationcinema">
                    <h1 style="font-size: 2em;">'.$cinema['nom'].'</h1>
                    <p class="infocinema">'.$cinema['adresse'].'</p>
                    <div class="flex">
                        <div class="voirplus">Voir plus</div>
                        <div class="seance">
                          <i class="fa fa-clock-o"></i> Toutes les séances
                        </div>
                    </div>
                </div>
                <div class="image">
              <img src="image/'.$cinema['image'].'" alt="'.$cinema['nom'].'" />
                </div>
              </div>';
     }
     ?>
    </div>
    <?php include('contact.php') ?>
    <?php include('footer.php') ?>
    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
  </body>
</html>
