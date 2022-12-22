<?php
$pdo_option[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
$bd = new PDO('mysql:host=localhost;dbname=cinemas','root','',$pdo_option);
?>