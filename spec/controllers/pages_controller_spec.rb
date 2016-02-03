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

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

	it "devrait avoir le bon titre" do
	  get 'contact'
	  response.should have_selector("title",
									:content => @base_titre + " | contact")
	end
  end

  describe "GET 'about'" do
	it "should be successful" do
		get 'about'
		response.should be_success
	end


	it "devrait avoir le bon titre" do
	  get 'about'
	  response.should have_selector("title",
									:content => @base_titre + " | about")
	end
  end

  describe "GET 'help'" do
	it "should be successful" do
		get 'help'
		response.should be_success
	end

	it "devrait avoir le bon titre" do
		get 'help'
		response.should have_selector("title",
									  :content => @base_titre + " | help")
	end
  end

end
