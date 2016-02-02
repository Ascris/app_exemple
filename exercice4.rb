#melange les lettres d'une chaine de caracteres donnee
#Etapes :
#	On met les caracteres de la chaine dans une liste (split)
#	On convertit en tableau (to_a)
#	On mélange les lettres du tableau (shuffle)
#	On reforme une chaine de caracteres avec les cases du tableau (join)

def chaine_melange(str)
	str.split('').to_a.shuffle.join
end

#utilisation : chaine_melange("babobi")

#ajoute a la classe String une methode shuffle
#on procede de la meme maniere sauf que la fonction s'applique au String lui-même
class String
	def melange
		self.split('').to_a.shuffle.join
	end
end

#utilisation : "babobi".melange


#creation de 3 tables de hashage (personne1, personne2, personne3)
#chaque table a 2 cles : :nom et :prenom
personne1 = {:nom => "Garnier" , :prenom => "Antoine"} 
personne2 = {:nom => "Hamard" , :prenom => "Marine"}
personne3 = {:nom => "Fourmond" , :prenom => "Jeje"}

#on cree une table de hashage vide (representant une famille)
#on affecte 
#	a la cle :pere la personne1
#	a la cle :mere la personne2
#	a la cle :enfant la personne3
#la valeur du :prenom de :enfant est bien le prenom de personne3

params = {}
params[:pere] = personne1
params[:mere] = personne2
params[:enfant] = personne3

params[:enfant][:prenom]
 => "Jeje" 

