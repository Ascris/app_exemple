require 'spec_helper'

describe "LayoutLinks" do

  it "devrait trouver une page Accueil a '/' " do
    get '/'
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact a '/Contact'" do
    get '/Contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "devrait trouver une page A_Propos a '/A_Propos'" do
    get '/A_Propos'
    response.should have_selector('title', :content => "A_Propos")
  end

  it "devrait trouver une page Aide a '/Aide'" do
    get '/Aide'
    response.should have_selector('title', :content => "Aide")
  end
end
