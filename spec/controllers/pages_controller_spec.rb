require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
	#titre commun aux pages
	@base_titre = "App_exemple pour Ruby On Rails"
  end

  describe "GET 'Accueil'" do
    it "should be successful" do
      get 'Accueil'
      response.should be_success
    end

	it "devrait avoir le bon titre" do
	  get 'Accueil'
	  response.should have_selector("title",
									:content => @base_titre + " | Accueil")
	end
  end

  describe "GET 'Contact'" do
    it "should be successful" do
      get 'Contact'
      response.should be_success
    end

	it "devrait avoir le bon titre" do
	  get 'Contact'
	  response.should have_selector("title",
									:content => @base_titre + " | Contact")
	end
  end

  describe "GET 'A_Propos'" do
	it "should be successful" do
		get 'A_Propos'
		response.should be_success
	end


	it "devrait avoir le bon titre" do
	  get 'A_Propos'
	  response.should have_selector("title",
									:content => @base_titre + " | A_Propos")
	end
  end

  describe "GET 'Aide'" do
	it "should be successful" do
		get 'Aide'
		response.should be_success
	end

	it "devrait avoir le bon titre" do
		get 'Aide'
		response.should have_selector("title",
									  :content => @base_titre + " | Aide")
	end
  end

end
