class PagesController < ApplicationController
  def index
    @title = "Index Page"
    
  end
  
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end

  def new_random_method
    
  end

  def another_new_random_method
    
  end
end
