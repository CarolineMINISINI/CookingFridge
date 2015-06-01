<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
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
		
		<?php include("menu.php"); ?>
		
		<section class="presentation">			<!-- Affichage des ingrédients de la catégorie sélectionnée -->
			<?php include("bd.php") ?>
			<form action="LesRecettes.php" method="POST">
			<div>
			<?php
				if (isset($_GET['Categorie']))		// Si on a sélectionné une catégorie
				{
					$req=$bdd->query('SELECT Nom FROM cat_ing WHERE Id_Cat='.$_GET['Categorie']);		// On récupère le nom de la catégorie correspondante
					$requete=$req->fetch();
					$MaCategorie = $requete['Nom'];
					echo '<h4 class="IngCat">Ingrédients de la catégorie ' . $MaCategorie . ' : </h4><br>';
					$req=$bdd->query('SELECT Nom, Num_Ing FROM ingredient WHERE Categorie='.$_GET['Categorie'].' ORDER BY Nom');		// On récupère tous les ingrédients de la catégorie, triés par ordre alphabétique
					while ($LesIngredients=$req->fetch()) 			// Et on les affiche tous avec des checkbox
					{
						{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$LesIngredients['Nom'].'" name="ingredient' .$LesIngredients['Num_Ing'] . '">' . $LesIngredients['Nom'] . '</label>';}
					}
				}
				else		// Si on a tapé l'URL dans le navigateur, par exemple, on affiche ce message
				{
					echo "Désolée, aucune catégorie d'ingrédients n'a été sélectionnée";
				}
			?>
			</div><br>
			<input class="Rechercher" type="submit" value="Rechercher une recette" action="">
			</form>

		</section>
		
		<?php include("navig.php")?>
		
		<?php include("footer.php")?>
	</body>
</html>
