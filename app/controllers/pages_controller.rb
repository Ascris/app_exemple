class PagesController < ApplicationController
  def Accueil
	@titre = "Accueil"
  end

  def Contact
	@titre = "Contact"
  end

  def A_Propos
	@titre = "A_Propos"
  end

end
