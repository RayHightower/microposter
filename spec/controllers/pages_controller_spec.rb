require 'spec_helper'

describe PagesController do
  render_views # RSpec needs to be told this explicitly.
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                    :content => "Microposter App | Home")
    end
    it "should be a pending test" do
      pending
      puts "Can I print something random here?"
      puts "Looks like printing is not allowed here."
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                                    :content => "Microposter App | Contact")
    end
  end

  describe "Get 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                                    :content => "Microposter App | About")
    end
  end

  describe "Get 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                                    :content => "Microposter App | Help")
    end
  end
  
  describe "Get 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
    it "should have the right title" do
      get 'index'
      response.should have_selector("title",
                                    :content => "Microposter App | Index")
    end
  end
end
