require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on rails"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "shoul have the right Tittle" do
      get 'home'
      response.should have_selector("title",
                                   :content => "#{@base_title} | Home")
    end

  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "shoul have the right Tittle" do
      get 'Contact'
      response.should have_selector("title",
                                    :content => "#{@base_title} | Contact")
    end

    it "should hava a non-blank body"
    get 'home'
    response.body.should_not =~ /<body>\s*<\/body>/
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "shoul have the right Tittle" do
      get 'about'
      response.should have_selector("title",
                                    :content => "#{@base_title} | about")
    end

  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end

    it "shoul have the right Tittle" do
      get 'help'
      response.should have_selector("title",
                                    :content => "#{@base_title} | Help")
    end

  end
end
