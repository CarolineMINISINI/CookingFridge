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
		
		<?php include("menu.php")?>
		
		<?php include("bd.php") ?>
		
		<section class="presentation">	
			<?php											// Affiche la recette
				$MesIng = array();
				$req=$bdd->query('SELECT recette.nom, recette.part, recette.temps_prep, recette.temps_cuiss, ingredient.nom, composer.quantite, composer.unite, recette.Desc, recette.Rmq FROM recette, ingredient, composer WHERE recette.num_rec=composer.num_rec AND ingredient.num_ing=composer.num_ing AND recette.num_rec='.$_GET['Recette']);		// Récupère les informations correspondant à la recette
				$donnees1=$req->fetch();					// Affiche les informations globales de la recete
				echo '<br><h4 class="grasoul">' . $donnees1[0] . ' : </h4>' ;
				echo '<p>Pour ' . $donnees1[1] . ' personnes<br>';
				echo 'Préparation : ' . substr($donnees1[2],0,2) . 'h ' . substr($donnees1[2],3,2) . 'min</br>';
				echo 'Cuisson : ' . substr($donnees1[3],0,2) . 'h ' . substr($donnees1[3],3,2) . 'min</br>';
				echo '<p class="grasoul">Ingrédients :<br><ul>';
				$MesIng[]=$donnees1[4];
				echo '<li> ' . $donnees1[4] . ' : ' . $donnees1[5] . $donnees1[6] . '</li>';
				while($donnees=$req->fetch())				// Affiche les ingrédients de la recette
				{	
					if (!in_array(array($donnees[4]), $MesIng))
					{
						$MesIng[]=$donnees[4];
						echo '<li> ' . $donnees[4] . ' : ' . $donnees[5] . $donnees[6] . '</li>';
					}
				}
				echo '</p></ul><p><span class="grasoul">Recette :</span><br>' . $donnees1[7] . '</p>';
				if (!empty($donnees1[8]))
				{
					echo '<p><span class="grasoul">Remarques :</span><br>' . $donnees1[8] . '</p>';		// Affiche les remarques s'il y en a
				}
			?>
			<input class="Retour" type="submit" value="Retourner à la recherche" action="" onclick="history.back()">
		</section>
		
		<?php include("navig.php")?>
		
		<?php include("footer.php")?>
	</body>
</html>
