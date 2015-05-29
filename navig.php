<nav class="Recherche par">
	<h4>Recherche par type de recette</h4>
	<ul>
		<li>Entrée</li>
		<li>Plat</li>
		<li>Dessert</li>
		<li>Cocktail</li>
	</ul>
	<h4>Recherche par catégorie</h4>
		<ul>
			<li><a href="LesIngredients.php?Categorie=1">Légumes</a></li>
			<li><a href="LesIngredients.php?Categorie=2">Fruits</a></li>
			<li><a href="LesIngredients.php?Categorie=3">Viandes, Oeufs</a></li>
			<li><a href="LesIngredients.php?Categorie=4">Poissons, Crustacés</a></li>
			<li><a href="LesIngredients.php?Categorie=5">Produits laitiers</a></li>
			<li><a href="LesIngredients.php?Categorie=6">Pâtes, Riz, Céréales, Farines, ...</a></li>
			<li><a href="LesIngredients.php?Categorie=7">Plantes arômatiques, Epices</a></li>
			<li><a href="LesIngredients.php?Categorie=8">Huiles, Beurres, Vinaigres, Sauces, Condiments</a></li>
			<li><a href="LesIngredients.php?Categorie=9">Boissons</a></li>
			<li><a href="LesIngredients.php?Categorie=10">Sucré</a></li>
			<li><a href="LesIngredients.php?Categorie=11">Divers</a></li>
		</ul>
</nav>
<br><br>
<nav class="MesIngredients">
	<h4>Mes Ingrédients</h4>
			<?php
				try {$bdd=new PDO('mysql:host=localhost;dbname=projet;charset=utf8', 'root', '');}
				catch (Exception $e) {die('Erreur : ' . $e->getMessage());}
			?>
			<?php
				echo '<form method="POST">';
					$req=$bdd->query('SELECT COUNT(*) FROM ingredient');
					$NbIng=$req->fetchAll(PDO::FETCH_ASSOC);
					$NbIng=$NbIng[0]['COUNT(*)'];
					$MesIng=array();
					$MesNumIng=array();
					if (count($_POST)>0)
					{	echo '<div class="MesIng">';
						for($i=1; $i<$NbIng+1; $i++)
						{
							if (isset($_POST['ingredient'.$i]))
							{	$MesIng[] = $_POST['ingredient'.$i];
								$MesNumIng[] = $i;
								echo ($_POST['ingredient'.$i].'<br>');}
						}
						echo '</div><br>';
						echo '<input class="Modifier" type="submit" value="Modifier mes ingrédients" action=""><a href="AjoutIngredient.php"></a>';
					}
					else 
					{
						echo "<p>Vous n'avez sélectionné aucun ingrédient</p>";
					}
				echo '</form>';
			?>
</nav>
<br>
<br>