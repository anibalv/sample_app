require 'spec_helper'

describe UserController do
render_views

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    
    it "sould have the right title" do 
      get 'new'
      response.should have_selector('title', :contect => "Sign up")
    end    
  end
end
