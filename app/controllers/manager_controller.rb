class ManagerController < ApplicationController
  layout "manager"

  before_action :authenticate_user!

  def dashboard
  end

 
  def logout
  end

end
