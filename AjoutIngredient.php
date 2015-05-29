<section class="ajout">
	<h3>Trouver une recette</h3>
	<?php
		try {$bdd=new PDO("mysql:host=localhost;dbname=projet;charset=utf8", "root", "", array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));}
		catch (Exception $e) {die('Erreur : ' . $e->getMessage());}
	?>
	<div class="panel-group" id="accordion">
		<form action="LesRecettes.php?AvecIngredient" method="POST">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie1">Légumes</a></h4>
				</div>
				<div id="Categorie1" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=1 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie2">Fruits</a></h4>
				</div>
				<div id="Categorie2" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=2 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie3">Viandes, Oeufs</a></h4>
				</div>
				<div id="Categorie3" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=3 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie4">Poissons, Crustacés</a></h4>
				</div>
				<div id="Categorie4" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=4 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie5">Produits laitiers</a></h4>
				</div>
				<div id="Categorie5" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=5 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie6">Pâtes, Riz, Céréales, Farines, ...</a></h4>
				</div>
				<div id="Categorie6" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=6 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie7">Plantes arômatiques, Epices</a></h4>
				</div>
				<div id="Categorie7" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=7 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie8">Huiles, Beurres, Vinaigres, Sauces, Condiments, ...</a></h4>
				</div>
				<div id="Categorie8" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=8 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie9">Boissons</a></h4>
				</div>
				<div id="Categorie9" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=9 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie10">Sucré</a></h4>
				</div>
				<div id="Categorie10" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=10 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title"><a class="Catégorie" data-toggle="collapse" data-parent="#accordion" href="#Categorie11">Divers</a></h4>
				</div>
				<div id="Categorie11" class="panel-collapse collapse">
					<div class="panel-body">
						<?php
							$req=$bdd->query('SELECT ingredient.Num_Ing, ingredient.nom FROM ingredient WHERE categorie=11 ORDER BY nom');	
							while($donnees=$req->fetch())
							{echo '<label class="checkbox-inline"><input type="checkbox" value="'.$donnees[1].'" name="ingredient' .$donnees[0] . '">' . $donnees[1] . '</label>';}
							$req->closeCursor();
						?>
					</div>
				</div>
			</div><br>
			<input class="Rechercher" type="submit" value="Rechercher une recette" action="">
		</form>
	</div>
</section>