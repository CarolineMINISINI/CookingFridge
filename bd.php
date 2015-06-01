<!-- Connexion à la BD -->

<?php
	try 
	{
		$bdd=new PDO("mysql:host=mysql12.000webhost.com;dbname=a8046592_projet;charset=utf8", "*****", "******", array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		$bdd->query('SET NAMES utf8');
	}
	catch (Exception $e) {die('Erreur : ' . $e->getMessage());}
?>