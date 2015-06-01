<nav class="Recherche par">
	<h4>Recherche par type de recette</h4>		<!-- Affichage des différentes catégories de recettes -->
	<ul>
		<li><a href="LesRecettes.php?Type=1" class="lien">Entrée</a></li>
		<li><a href="LesRecettes.php?Type=2" class="lien">Plat</a></li>
		<li><a href="LesRecettes.php?Type=3" class="lien">Dessert</a></li>
		<li><a href="LesRecettes.php?Type=4" class="lien">Cocktail</a></li>
	</ul>
	<h4>Recherche par catégorie</h4>		<!-- Affichage des différentes catégories d'ingrédients -->
		<ul>
			<li><a href="LesIngredients.php?Categorie=1" class="lien">Légumes</a></li>
			<li><a href="LesIngredients.php?Categorie=2" class="lien">Fruits</a></li>
			<li><a href="LesIngredients.php?Categorie=3" class="lien">Viandes, Oeufs</a></li>
			<li><a href="LesIngredients.php?Categorie=4" class="lien">Poissons, Crustacés</a></li>
			<li><a href="LesIngredients.php?Categorie=5" class="lien">Produits laitiers</a></li>
			<li><a href="LesIngredients.php?Categorie=6" class="lien">Pâtes, Riz, Céréales, Farines, ...</a></li>
			<li><a href="LesIngredients.php?Categorie=7" class="lien">Plantes arômatiques, Epices</a></li>
			<li><a href="LesIngredients.php?Categorie=8" class="lien">Huiles, Beurres, Vinaigres, Sauces, Condiments</a></li>
			<li><a href="LesIngredients.php?Categorie=9" class="lien">Boissons</a></li>
			<li><a href="LesIngredients.php?Categorie=10" class="lien">Sucré</a></li>
			<li><a href="LesIngredients.php?Categorie=11" class="lien">Divers</a></li>
		</ul>
</nav>
<br><br>
<nav class="MesIngredients">		<!-- Affichage des ingrédients déjà sélectionnés -->
	<h4>Mes Ingrédients</h4>
			<?php include("bd.php") ?>
			<?php
				echo '<form method="POST">';
					$req=$bdd->query('SELECT COUNT(*) FROM ingredient');		// Récupère le nombre d'ingrédients de la BD
					$NbIng=$req->fetchAll(PDO::FETCH_ASSOC);
					$NbIng=$NbIng[0]['COUNT(*)'];
					$MesNumIng=array();
					if (isset($_COOKIE['Ingredient']) || count($_POST)>0)		// Si on a ajouté des ingrédients
					{	echo '<div class="MesIng">';
						for($i=1; $i<$NbIng+1; $i++)							// On parcourt tous les ingrédients de la BD
						{
							if (isset($_COOKIE['Ingredient'][$i]) && !in_array($i, $MesNumIng))			// On affiche ceux qui ne sont pas encore affichés et qui sont dans les cookies (manipulation antérieure)
							{	
								$MesNumIng[] = $i;
								echo $_COOKIE['Ingredient'][$i].'<br>';
							}
							if (isset($_POST['ingredient'.$i]) && !in_array($i, $MesNumIng))			// On affiche ceux qui ne sont pas encore affichés et qui viennent d'être postés
							{
								$MesNumIng[] = $i;
								echo $_POST['ingredient'.$i].'<br>';
							}
						}
						echo '</div><br>';
					}
					else			// Si aucun ingrédient n'a été ajouté depuis le début, on affiche ce message
					{
						echo "<p>Vous n'avez sélectionné aucun ingrédient</p>";
					}
				echo '</form>';
			?>
</nav>