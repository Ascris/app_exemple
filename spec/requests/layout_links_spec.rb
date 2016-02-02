require 'spec_helper'

describe "LayoutLinks" do

  it "devrait trouver une page Accueil a '/' " do
    get '/'
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact at '/Contact'" do
    get '/Contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an A_Propos page at '/A_Propos'" do
    get '/A_Propos'
    response.should have_selector('title', :content => "A_Propos")
  end

  it "devrait trouver une page Aide a '/Aide'" do
    get '/Aide'
    response.should have_selector('title', :content => "Aide")
  end
end
