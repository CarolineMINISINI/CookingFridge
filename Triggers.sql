DELIMITER /

CREATE TRIGGER delete_ingredient
BEFORE DELETE ON Ingredient
FOR EACH ROW

DECLARE
	Nombre NUMBER(3);
	Erreur EXCEPTION;

BEGIN
	SELECT COUNT(*) INTO Nombre
	FROM Composer
	WHERE Composer.Num_Ing = :old.Num_Ing;
	
	IF Nombre<>0
	THEN RAISE Erreur;
	END IF;
	
	EXCEPTION
	WHEN Erreur THEN
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Attention - Cet ingrédient est utilisé dans '||Nombre||' recettes ! Supprimez les recettes en premier.');
		RAISE_APPLICATION_ERROR(-20001, 'Suppression impossible');
	END;
END;
/

CREATE TRIGGER delete_composer
BEFORE DELETE ON Composer
FOR EACH ROW

DECLARE
	Nombre_Ingredient NUMBER(3);
	Nombre_Recette NUMBER(3);
	Erreur_Ingredient EXCEPTION;
	Erreur_Recette EXCEPTION;
	
BEGIN
	SELECT COUNT(*) INTO Nombre_Ingredient
	FROM Ingredient
	WHERE Ingredient.Num_Ing = :old.Num_Ing;
	
	SELECT COUNT(*) INTO Nombre_Recette
	FROM Recette
	WHERE Recette.Num_Ing = :old.Num_Rec;
	
	IF Nombre_Ingredient<>0
	THEN RAISE Erreur_Ingredient;
	END IF;
	
	IF Nombre_Recette<>0
	THEN RAISE Erreur_Recette;
	END IF;
	
	EXCEPTION
	WHEN Erreur_Ingredient THEN
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Attention - Cet composition utilise '||Nombre||' ingrédients existants ! Supprimez les ingrédients avant.');
		RAISE_APPLICATION_ERROR(-20001, 'Suppression impossible');
	END;
	WHEN Erreur THEN
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Attention - Cet composition utilise '||Nombre||' recette ! Supprimez les Recettes en premier.');
		RAISE_APPLICATION_ERROR(-20001, 'Suppression impossible');
	END;
END;
/

DELIMITER ;
