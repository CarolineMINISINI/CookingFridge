<section class="ajout">					<!-- Affichage des lettres permettant de chercher une recette par ordre alphabétique -->

	<h3>Trouver une recette par ordre alphabétique</h3>
	<?php include("bd.php") ?>
	<div class="alpha">
		<a href="LesRecettes.php?alpha=a" class="alphalien">A</a>
		<a href="LesRecettes.php?alpha=b" class="alphalien">B</a>
		<a href="LesRecettes.php?alpha=c" class="alphalien">C</a>
		<a href="LesRecettes.php?alpha=d" class="alphalien">D</a>
		<a href="LesRecettes.php?alpha=e" class="alphalien">E</a>
		<a href="LesRecettes.php?alpha=f" class="alphalien">F</a>
		<a href="LesRecettes.php?alpha=g" class="alphalien">G</a>
		<a href="LesRecettes.php?alpha=h" class="alphalien">H</a>
		<a href="LesRecettes.php?alpha=i" class="alphalien">I</a>
		<a href="LesRecettes.php?alpha=j" class="alphalien">J</a>
		<a href="LesRecettes.php?alpha=k" class="alphalien">K</a>
		<a href="LesRecettes.php?alpha=l" class="alphalien">L</a>
		<a href="LesRecettes.php?alpha=m" class="alphalien">M</a>
		<a href="LesRecettes.php?alpha=n" class="alphalien">N</a>
		<a href="LesRecettes.php?alpha=o" class="alphalien">O</a>
		<a href="LesRecettes.php?alpha=p" class="alphalien">P</a>
		<a href="LesRecettes.php?alpha=q" class="alphalien">Q</a>
		<a href="LesRecettes.php?alpha=r" class="alphalien">R</a>
		<a href="LesRecettes.php?alpha=s" class="alphalien">S</a>
		<a href="LesRecettes.php?alpha=t" class="alphalien">T</a>
		<a href="LesRecettes.php?alpha=u" class="alphalien">U</a>
		<a href="LesRecettes.php?alpha=v" class="alphalien">V</a>
		<a href="LesRecettes.php?alpha=w" class="alphalien">W</a>
		<a href="LesRecettes.php?alpha=x" class="alphalien">X</a>
		<a href="LesRecettes.php?alpha=y" class="alphalien">Y</a>
		<a href="LesRecettes.php?alpha=z" class="alphalien">Z</a>
	</div>
	
</section>

<section class="ajout">					<!-- Affichage de tous les ingrédients, classés par panel de catégorie -->

	<h3>Trouver une recette par ingrédients</h3>
	<div class="panel-group" id="accordion">
		<form action="LesRecettes.php?AvecIngredient" method="POST">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie1">Légumes</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie1" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=1 ORDER BY nom');			// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie2">Fruits</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie2" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=2 ORDER BY nom');			// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie3">Viandes, Oeufs</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie3" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=3 ORDER BY nom');			// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie4">Poissons, Crustacés</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie4" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=4 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie5">Produits laitiers</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie5" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=5 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie6">Pâtes, Riz, Céréales, Farines, ...</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie6" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=6 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie7">Plantes arômatiques, Epices</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie7" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=7 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie8">Huiles, Beurres, Vinaigres, Sauces, Condiments, ...</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie8" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=8 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie9">Boissons</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie9" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=9 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie10">Sucré</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie10" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=10 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie11">Divers</a></h4>			<!-- Nom du panel -->
				</div>
				<div id="Categorie11" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=11 ORDER BY nom');				// Requête qui récupère tous les ingrédients de la catégorie par ordre alphabétique
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}		// Les affiche un par un, avec des checkbox
							$req->closeCursor();
						?>
					</div>
				</div>
			</div><br>
			<input class="Rechercher" type="submit" value="Rechercher une recette" action="">			<!-- Bouton qui envoie les ingrédients -->
		</form>
	</div>
</section>