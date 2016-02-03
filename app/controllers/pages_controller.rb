class PagesController < ApplicationController

  def Accueil
	@titre = "Accueil"
  end

  def contact
	@titre = "contact"
  end

  def about
	@titre = "about"
  end

  def help
	@titre = "help"
  end

end
