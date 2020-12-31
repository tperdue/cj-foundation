class ApplicationController < ActionController::Base

  before_action :get_site_settings, :get_home_page, :get_about_page
  protected

  def get_home_page
    if HomePage.active.empty?
      @home_page = HomePage.new({:identifier => "active"})
      @home_page.save
      @home_page

    else
      @home_page = HomePage.active.first
    end
  end

  def get_site_settings
    if SiteInfo.active.empty?
      @site_info = SiteInfo.new({:identifier => "active"})
      @site_info.save
      @site_info

    else
      @site_info = SiteInfo.active.first
    end
  end

  def get_about_page
    if AboutPage.active.empty?
      @about_page = AboutPage.new({:identifier => "active"})
      @about_page.save
      @about_page

    else
      @about_page = AboutPage.active.first
    end
  end
end
