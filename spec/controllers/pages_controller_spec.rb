require 'spec_helper'

describe PagesController do

  describe "GET 'Accueil'" do
    it "should be successful" do
      get 'Accueil'
      response.should be_success
    end
  end

  describe "GET 'Contact'" do
    it "should be successful" do
      get 'Contact'
      response.should be_success
    end
  end

end
