class PageController < ApplicationController
  def home
    @home_page = HomePage.active
    
  end

  def about
  end

  def contact
  end
end
