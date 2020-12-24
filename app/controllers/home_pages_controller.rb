class HomePagesController < ApplicationController
  layout "manager"

  before_action :authenticate_user!

  def new
    @home_page = HomePage.active.empty? ? HomePage.new : HomePage.active
    redirect_to edit_home_page_path(@home_page)
  end

  def create

  end

  def edit
    @home_page = HomePage.active
  end

  def show

  end


  def update

  end

end
