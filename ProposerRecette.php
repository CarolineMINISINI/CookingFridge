<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
		<script type="text/javascript" src="scripts/fonctions_utiles.js"></script>
		<script type="text/javascript" src="scripts/autocompletion.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="style.css" >
		<link rel="shortcut icon" href="favicon.png" type="image/png"/> 
		<link rel="icon" href="favicon.png" type="image/png"/>
		<title>CookingFridge : Vous manquez d'inspiration ? Je trouve des recettes pour vous.</title>
	</head>
	
	<body>
		<header>
			<h1>Bienvenue sur CookingFridge !</h1>
			<h2>Votre assistant personnalisé de cuisine</h2>
		</header>
		
		<?php include("menu.php")?>
			
		<section class="presentation">
			<form method="post" action="traitement.php">
				<label>Nom de votre recette</label><input class="AjoutRecette NomRecette" type="text" name="pseudo" /><br>
				<label>Catégorie </label>
					<select class="AjoutRecette" name="pays" id="pays">
					   <?php
							try {$bdd=new PDO("mysql:host=localhost;dbname=projet;charset=utf8", "root", "", array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));}
							catch (Exception $e) {die('Erreur : ' . $e->getMessage());}
							$req=$bdd->query('SELECT Nom FROM cat_rec ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<option>' . $donnees['Nom'] . '</option>';}
							$req->closeCursor();
					   ?>
					</select><br>
				<label>Nombre de parts </label><input class="AjoutRecette" type="text" name="pseudo" /><br>
				<label>Temps de préparation </label><input class="AjoutRecette" type="text" name="pseudo" /><br>
				<label>Temps de cuisson </label><input class="AjoutRecette" type="text" name="pseudo" /><br>
				<label class="Description">Description </label><textarea class="AjoutRecette Desc" type="text" name="pseudo" cols=50 rows=5></textarea><br>
				<label class="Remarque">Remarques, Anecdotes </label><input class="AjoutRecette" type="text" name="pseudo" /><br><br>
				<input class="Soumettre" type="submit" value="Soumettre" action="">'
			</form>
		</section>
		
		<?php include("navig.php")?>
						
		<?php include("footer.php")?>
	</body>
</html>