<!-- Connexion à la BD -->

<?php
	try 
	{
		$bdd=new PDO("mysql:host=localhost;dbname=projet;charset=utf8", "root", "", array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		$bdd->query('SET NAMES utf8');
	}
	catch (Exception $e) {die('Erreur : ' . $e->getMessage());}
?>