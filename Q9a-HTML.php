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
    <?php include('connectionBD.php') ?>
    <div class="section section1">
      <div class="nav">
        <h2>Nouveautés / CINEMA DE RENNES</h2>
        <select>
          <option>Changer de cinéma</option>
        <?php $reponse2 = $bd->query('SELECT nom FROM cinema');
        $donnee2 = $reponse2->fetchAll();
          ?>
          <?php foreach($donnee2 as $cinema) {
          echo'<option value="'.$cinema['nom'].'">'.$cinema['nom'].'</option>';
        } ?>
        </select>
      </div>
      <div class="prestations">
        
         <?php $reponse = $bd->query('SELECT * FROM film, genre WHERE film.idgenre=genre.idgenre ORDER BY datedesortie DESC');
        $donnee = $reponse->fetchAll();
          ?>
          <?php
          foreach($donnee as $film){echo'<div class="imagesPrestations">
          <img src="image/'.$film['lienImage'].'" alt="'.$film['titre'].'" />
          <div>
            <div class="detail">Voir plus+</div>
            <div class="titre">'.$film['titre'].'</div>
          </div>
          <div class="detailFilms">
      <div class="detailFilms-contenu">
        <span class="close">&times;</span>
        <div class="information">
          <h4>Date de sortie :'.$film['datedesortie'].'</h4>
          <h1>'.$film['titre'].'</h1>
          <p class="infofilm">
            <strong> Realisé par :</strong>&nbsp;&nbsp;&nbsp;&nbsp;'.$film['realisateur'].'
          </p>
          <p class="infofilm">
            <strong> Genre : </strong>&nbsp;&nbsp;&nbsp;&nbsp;'.$film['libelle'].'
          </p>
          <p class="infofilm">
            <strong> Durée : </strong>&nbsp;&nbsp;&nbsp;&nbsp;'.$film['duree'].' minutes
          </p>
          <p class="resume">
          '.$film['resume'].'
          </p>
          <div class="flex">
            <div class="voirplus">Voir plus</div>
            <div class="seance"><i class="fa fa-clock-o"></i> Séances</div>
          </div>
        </div>
        <div class="image">
          <img src="image/'.$film['lienImage'].'" alt="'.$film['titre'].'" />
        </div>
      </div>
    </div>
        </div>';} ?>
      </div>
    </div>
    <?php include('contact.php') ?>
    <?php include('footer.php') ?>
    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
  </body>
</html>
