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
			<form method="post" action="Traitement.php">				<!-- Formulaire permettant de proposer une recette -->
			<table>
				<tr>
					<td><p>Votre nom *</p></td>
					<td><input class="AjoutRecette" type="text" name="nom" size=40></td>
				</tr>
				<tr>
					<td>Votre e-mail *</td>
					<td><input class="AjoutRecette" type="email" name="email" size=40></td>
				</tr>
				<tr>
					<td>Nom de la recette *</td>
					<td><input class="AjoutRecette" type="text" name="nomrecette" size=60></td>
				</tr>
				<tr>
					<td>Catégorie *</td>
					<td><select class="AjoutRecette" name="categorie">
						<?php
							$req=$bdd->query('SELECT Nom FROM cat_rec ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<option>' . $donnees['Nom'] . '</option>';}
							$req->closeCursor();
						?>
					</select></td>
				</tr>
				<tr>
					<td>Nombre de parts *</td>
					<td><input class="AjoutRecette" type="text" name="parts" size=10></td>
				</tr>
				<tr>
					<td>Préparation *</td>
					<td><input class="AjoutRecette" type="text" name="prep" size=2 placeholder="hh" maxlength=2> :<input class="AjoutRecette" type="text" name="title" size=2 placeholder="mm" maxlength=2></td>
				</tr>
				<tr>
					<td>Cuisson *</td>
					<td><input class="AjoutRecette" type="text" name="cuiss" size=2 placeholder="hh" maxlength=2> :<input class="AjoutRecette" type="text" name="title" size=2 placeholder="mm" maxlength=2></td>
				</tr>
				<tr><td colspan=2>Description *
					<textarea class="AjoutRecette Desc" placeholder="Précisez les ingrédients et les quantités, puis la démarche à suivre" COLS=60 ROWS=6 name="desc"></textarea>
				</td></tr>
				<tr><td colspan=2>Remarques
				<textarea class="AjoutRecette Desc" COLS=50 ROWS=3 name="rmq"></textarea>
				</td></tr>
				</table>
				<br>
				<br>
				<input class="Soumettre" type="submit" value="Soumettre" action="">
			</form>
			<br>
			<p class="precision">* : Champs obligatoires </p>
		</section>
				
		<?php include("navig.php")?>
		
				
		<?php if (isset($_GET['mailpasok']))		// Si le traitement du mail n'aboutit pas, affiche cette alerte
		{
			echo "<script type='text/javascript'>alert('Vous devez remplir tous les champs obligatoires ! Vous devez respecter le format imposé !')</script> !</p>";
		}
		?>
						
		<?php include("footer.php")?>
	</body>
</html>