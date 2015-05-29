<section classe="autre">
	<h3>Trouver une recette</h3>
	<label for="Ingredient">Ingrédient 1 : </label>
	<select id="Ingredient" class="form-control">
		<option>

			<?php
				try {$bdd=new PDO('mysql:host=localhost;dbname=projet;charset=utf8', 'root', '');}
				catch (Exception $e) {die('Erreur : ' . $e->getMessage());}

				$req=$bdd->query('SELECT nom FROM ingredient');	
					
				while($donnees=$req->fetch())
				{
					echo $donnees;
				}

				$req->closeCursor();
			?>
		</option>
		
	</select>
</section>