class ManagerController < ApplicationController
  layout "manager"

  before_action :authenticate_user!

  def dashboard
    @home_page = HomePage.active
  end

 
  def logout
  end

end
