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
				
		<section class="recette">				<!-- Affiche les recettes demandées -->
			<?php include("bd.php") ?>			<!-- Connexion à la BD -->
			<?php
				$MesRecettes = array();
				$MesRecettesIng = array();
				if (isset($_GET['Type'])) 		// Si on recherche les recettes par catégorie
				{
					$req=$bdd->query('SELECT recette.nom, recette.num_rec, ingredient.nom FROM recette, ingredient, composer WHERE recette.num_rec=composer.num_rec AND ingredient.num_ing=composer.num_ing AND recette.Categorie='.$_GET['Type']);			// Requête qui permet de récupérer toutes les recettes de la catégorie
					if (!$req->fetch()) {echo 'Désolée, aucune recette ne correspond à cette catégorie. <br>';}			// Affiche cette phrase si la requête ne renvoie aucun résultat
					else		// Si on trouve des recettes dans la catégorie
					{
						while($donnees=$req->fetch())
						{	
							if (!in_array(array($donnees[0]), $MesRecettes))		// Si la recette n'est pas déjà affichée, on affiche le lien vers cette recette
							{
								$MesRecettes[]=array($donnees[0]); 
								$MesRecettesIng[]=array($donnees[0], $donnees[2]); 
								echo '<br><li><a href="MaRecette.php?Recette=' . $donnees[1] . '" class="lien">' . $donnees[0] . ' </a></li> ' ;
							}
						}
					}
				}
				else if (isset($_GET['Tout']))		// Si on veut voir toutes les recettes
				{
					$req=$bdd->query('SELECT recette.nom, recette.num_rec, ingredient.nom FROM recette, ingredient, composer WHERE recette.num_rec=composer.num_rec AND ingredient.num_ing=composer.num_ing');		// Requête qui récupère toutes les recettes
					if (!$req->fetch()) {echo "Désolée, aucune recette n'est enregistrée pour le moment. <br>";}		// Affiche ce message si la requête ne renvoie aucun résultat
					else		// Si on trouve des recettes
					{
						while($donnees=$req->fetch())
						{	
							if (!in_array(array($donnees[0]), $MesRecettes))		// Si la recette n'est pas déjà affichée, on affiche le lien vers cette recette
							{
								$MesRecettes[]=array($donnees[0]);
								$MesRecettesIng[]=array($donnees[0], $donnees[2]); 
								echo '<br><li><a href="MaRecette.php?Recette=' . $donnees[1] . '" class="lien">' . $donnees[0] . ' </a></li> ' ;
							}
						}
					}
				}
				else if (isset($_GET['alpha']))		// Si on cherche des recettes par ordre alphabétique
				{
					$req=$bdd->query("SELECT recette.nom, recette.num_rec, ingredient.nom FROM recette, ingredient, composer WHERE recette.num_rec=composer.num_rec AND ingredient.num_ing=composer.num_ing AND recette.nom LIKE '".$_GET['alpha']."%'");		// Requete qui récupère toutes les recettes commencant par cette lettre
					if (!$req->fetch()) {echo "Désolée, aucune recette dont le nom commence par cette lettre n'a été répertoriée. <br>";}		// Affiche ce message si la requête ne renvoie aucun résultat
					else		// Si on trouve des recettes commencant par cette lettre
					{
						while($donnees=$req->fetch())
						{	
							if (!in_array(array($donnees[0]), $MesRecettes)) 		// Si la recette n'est pas déjà affichée, on affiche le lien vers cette recette
							{
								$MesRecettes[]=array($donnees[0]);
								$MesRecettesIng[]=array($donnees[0], $donnees[2]); 
								echo '<br><li><a href="MaRecette.php?Recette=' . $donnees[1] . '" class="lien">' . $donnees[0] . ' </a></li> ' ;
							}
						}
					}
				}
				else		// Si on cherche des recettes grâce à nos ingrédients
				{
					$req=$bdd->query('SELECT COUNT(*) FROM ingredient');		// On enregistre le nombre d'ingrédients de la BD
					$NbIng=$req->fetchAll(PDO::FETCH_ASSOC);
					$NbIng=$NbIng[0]['COUNT(*)'];
					$req=$bdd->query('SELECT COUNT(*) FROM recette');			// On enregistre le nombre de recettes de la BD
					$NbRec=$req->fetchAll(PDO::FETCH_ASSOC);
					$NbRec=$NbRec[0]['COUNT(*)'];
					$MesIng=array();
					$MesNumIng=array();
					if (count($_POST)==0 && !isset($_COOKIE['Ingredient']))		// Si aucun ingrédient n'a été sélectionné depuis qu'on est sur le site, on affiche ce message
					{
						echo "<p>Vous n'avez sélectionné aucun ingrédient</p>";
					}
					else				// Si on a déjà saisi des ingrédients
					{	for($i=1; $i<$NbIng+1; $i++)			// On parcourt tous les ingrédients
						{
							if (isset($_POST['ingredient'.$i]))		// Si l'ingrédient vient tout juste d'être ajouté, on l'ajoute aux cookies et à notre liste d'ingrédients courante
							{	
								$MesIng[] = $_POST['ingredient'.$i];
								$MesNumIng[] = $i;
								$req=$bdd->query('SELECT ingredient.nom FROM ingredient WHERE ingredient.num_ing='.$i);
								$ing=$req->fetch();
								setcookie('Ingredient['.$i.']', $ing['nom'], 0);
							}
							else if (isset($_COOKIE['Ingredient'][$i]))		// Si l'ingrédient est déjà dans les cookies, on l'ajoute à notre liste d'ingrédients courante
							{
								$MesIng[]=$_COOKIE['Ingredient'][$i];
								$MesNumIng[] = $i;
							}
						}
						for($i=0; $i<count($MesIng); $i++) 		// On parcourt la liste courante des ingrédients
						{	
							$req=$bdd->query('SELECT recette.num_rec FROM recette, composer WHERE recette.num_rec=composer.num_rec AND composer.num_ing='. $MesNumIng[$i]);			// On récupère toutes les recettes qui utilisent nos ingrédients
							$var[]=$req->fetch();
						}
						if (empty($var[0])) {echo 'Désolée, aucune recette ne correpond aux ingrédients saisis. <br>';}			// Si la requête n'a rien renvoyé, on affiche ce message
						else		// Si la requête a renvoyé au moins une recette
						{
							$trouve=false;											// Variable qui permettra de savoir si on a affiché une recette
							$TabRec=array();
							for($i=0; $i<$NbRec+1; $i++) {	$TabRec[$i]=0;	}		// Pour chaque recette répertoriée, on place le nombre d'ingrédients utilisés à 0
							for($i=0; $i<count($var); $i++)			// On parcout les recettes qui nous intéresse
							{	$j=$var[$i]['num_rec'];
								if (isset($TabRec[$j]))
								{	$TabRec[$j]++ ;									// A chaque fois qu'un ingrédient est utilisé dans cette recette, on incrémente le nombre d'ingrédients utilisés
									$req=$bdd->query('SELECT count(*) FROM composer WHERE composer.num_rec='.$j);		// On récupère le nombre d'ingrédients réellement utilisés dans cette recette
									$NbIngRec=$req->fetch();
									if ($NbIngRec['count(*)']==$TabRec[$j])			// Si tous les ingrédients nécessaires à la recette sont dans la liste courante des ingrédients
									{	$trouve=true;								// On précise qu'on a affiché une recette
										$req=$bdd->query('SELECT recette.nom, recette.num_rec, ingredient.nom FROM recette, ingredient, composer WHERE recette.num_rec=composer.num_rec AND ingredient.num_ing=composer.num_ing AND recette.num_rec='.$j);		// Récupère la recette à afficher
										while($donnees=$req->fetch())
										{	
											if (!in_array(array($donnees[0]), $MesRecettes))		// Si la recette n'est pas déjà affichée, on affiche le lien vers la recette
											{
												$MesRecettes[]=array($donnees[0]);
												$MesRecettesIng[]=array($donnees[0], $donnees[2]); 
												echo '<br><li><a href="MaRecette.php?Recette=' . $donnees[1] . '" class="lien">' . $donnees[0] . ' </a></li> ' ;
											}
										}
									}
								}
							}
						if (!$trouve) { echo 'Désolée, aucune recette ne correpond aux ingrédients saisis. <br>'; } 		// Si aucune recette n'a été affichée, on affiche ce message 
						}
					}
				}
			?>
			<br>
			<input class="Retour" type="submit" value="Retourner à la recherche" action="" onclick="history.back()">		<!-- Permet de revenir en arrière si besoin est -->
		</section>
		
		<?php include("navig.php")?>	
		
		<?php include("footer.php")?>
	</body>
</html>