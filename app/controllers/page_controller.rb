class PageController < ApplicationController
  before_action :get_home_page, :get_site_settings
  def home
  end

  def about
  end

  def contact
  end
end
