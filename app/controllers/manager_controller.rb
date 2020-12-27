class ManagerController < ApplicationController
  layout "manager"

  before_action :authenticate_user!
  before_action :get_home_page, :get_site_settings, :get_current_user

  def dashboard
    redirect_to edit_home_page_path(@home_page)
  end

 
  def logout
  end

end
