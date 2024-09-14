
//On cherche à avoir un input qui ne prend en compte uniquement les chiffres et les caractères spéciaux
if clicked{
	
	if keyboard_lastkey != vk_backspace{
		var currentChar = string_char_at(keyboard_string, string_length(keyboard_string)); //On positionne le "pointeur" là où on souhaite vérifier le caractère à traiter
	
		if ( !((currentChar >= "A" && currentChar <= "Z") || (currentChar >= "a" && currentChar <= "z")) && currentChar != ""){ //On arrive à configurer des intervalles de caractères grâce à leur valeur ASCII
			txtTyped += currentChar; //On ajoute le caractère vérifié à la chaîne de caractères vérifiée
		}
	}
}