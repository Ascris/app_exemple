# Avec ":user", Factory Girl simule un modèle User
Factory.define :user do |user|
	user.nom						"Antoine GARNIER"
	user.email						"antoinegarnier@hotmail.fr"
	user.password					"password_example"
	user.password_confirmation 		"password_example"
end
