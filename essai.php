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
		
		<?php include("menu.php"); ?>
				
		<section class="presentation">
			<?php
				try {$bdd=new PDO('mysql:host=localhost;dbname=projet;charset=utf8', 'root', '');}
				catch (Exception $e) {die('Erreur : ' . $e->getMessage());}
				?>
			<?php
				$req=$bdd->query('SELECT COUNT(*) FROM ingredient');
				$NbIng=$req->fetchAll(PDO::FETCH_ASSOC);
				$NbIng=$NbIng[0]['COUNT(*)'];
				$req=$bdd->query('SELECT COUNT(*) FROM recette');
				$NbRec=$req->fetchAll(PDO::FETCH_ASSOC);
				$NbRec=$NbRec[0]['COUNT(*)'];
				$MesIng=array();
				$MesNumIng=array();
				for($i=1; $i<$NbIng+1; $i++)
				{
					if (isset($_POST['ingredient'.$i]))
					{	$MesIng[] = $_POST['ingredient'.$i];
						$MesNumIng[] = $i;}
				}
			?>
			<?php
				echo in_array(0,array());
				for($i=0; $i<count($MesIng); $i++)
				{	$req1=$bdd->query('SELECT recette.num_rec FROM recette, composer WHERE recette.num_rec=composer.num_rec AND composer.num_ing='. $MesNumIng[$i]);
					$var[]=$req1->fetch();	}
				$TabRec=array();
				for($i=0; $i<$NbRec+1; $i++)
				{	$TabRec[$i]=0;	}
				$MesRecettes = array();
				for($i=0; $i<count($var); $i++)
				{	$j=$var[$i]['num_rec'];
					if (isset($TabRec[$j]))
					{	$TabRec[$j]++ ;	
						$req=$bdd->query('SELECT count(*) FROM composer WHERE composer.num_rec='.$j);
						$NbIngRec=$req->fetch();
						if ($NbIngRec['count(*)']==$TabRec[$j])
						{	$req2=$bdd->query('SELECT recette.nom, ingredient.nom, composer.quantite, composer.unite FROM recette, ingredient, composer WHERE recette.num_rec=composer.num_rec AND ingredient.num_ing=composer.num_ing AND recette.num_rec='.$j);
							while($donnees=$req2->fetch())
							{	if (in_array(array($donnees[0], $donnees[1]), $MesRecettes)){}
								else 
								{	$MesRecettes[]=array($donnees[0], $donnees[1]); 
									echo '<li>' . $donnees[0] . ' (' . $donnees[1] . ' : ' . $donnees[2] . $donnees[3] . ' )</li>';
								}
							}
						}
					}
				}
			?>
			<?php
				/*
				$req=$bdd->query('SELECT recette.nom, ingredient.nom, composer.quantite, composer.unite FROM recette, ingredient, composer WHERE recette.num_rec=composer.num_rec AND ingredient.num_ing=composer.num_ing');	
					
				while($donnees=$req->fetch())
				{
					echo '<li>' . $donnees[0] . ' (' . $donnees[1] . ' : ' . $donnees[2] . $donnees[3] . ' )</li>';
				}
				
				$req->closeCursor();
				*/
			?>
		</section>
		
		<?php include("navig.php")?>	
		
		<?php include("footer.php")?>
	</body>
</html>
