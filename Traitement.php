<?php		// Traitement du mail

	if (!empty($_POST['nom']) AND !empty($_POST['email']) AND !empty($_POST['nomrecette']) AND !empty($_POST['parts']) AND !empty($_POST['prep']) AND !empty($_POST['cuiss']) AND !empty($_POST['desc']))
	{	// Si les champs obligatoires sont tous remplis, on crée le mail
		$adresse = "minisini.caroline@gmail.com";

		$head = "From: ".$adresse."\n";
		$head .= "X-Sender: <".$adresse.">\n";
		$head .= 'X-Mailer: PHP/' . phpversion();
		$head .= "Return-Path: <".$adresse.">\n";
		$head .= "Content-Type: text/plain; charset=utf8_decode\n";

		$sujet = "Formulaire d'ajout de recette";

		$informations = "
		Nom: ".$_POST['nom']." \r\n
		Email du formulaire: ".$_POST['email']." \r\n
		Nom de la recette: ".$_POST['nomrecette']."\r\n
		Catégorie: ".$_POST['categorie']."\r\n
		Nombre de parts: ".$_POST['parts']."\r\n
		Temps de préparation: ".$_POST['prep']."\r\n
		Temps de cuisson: ".$_POST['cuiss']."\r\n
		Description: ".$_POST['desc']." \r\n";
		if (isset($_POST['rmq']))		// Si une remarque a été insérée, on la rajoute
		{
			$informations .= "Remarques: ".$_POST['rmq']." \r\n";
		}

		$res = mail($adresse, $sujet ,$informations, $head);		// Envoyer le mail
	}
	else // Si les champs obligatoires n'ont pas été remplis, ou que les champs sont mal remplis
	{
		$res = false;
	}

	if ($res) {
		header("location:./?mailok");
	} else {
		header("location:ProposerRecette.php?mailpasok");
	}
?>