module ApplicationHelper

	#definition du logo
	def logo
		image_tag("logo.png",
				  :alt => "App_exemple",
				  :class => "round")
	end

	#definition d'une base de titre qui s'affiche avec '|' si le titre est defini
	def titre
	    base_titre = "App_exemple pour Ruby On Rails"
	    if @titre.nil?
    	  base_titre
    	else
      	"#{base_titre} | #{@titre}"
    	end
	end
end
