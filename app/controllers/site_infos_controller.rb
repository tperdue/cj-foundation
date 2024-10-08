class SiteInfosController < ApplicationController
  layout "manager"

  before_action :authenticate_user!


  def new
    redirect_to edit_site_info_path(@site_info)
  end

  def create

  end

  def edit
    @site_info = SiteInfo.find(params[:id])
  end

  def update
    @site_info = SiteInfo.find(params[:id])
    if @site_info.update(site_info_params)

      redirect_to edit_site_info_path(@site_info), notice: 'Successfully updated site settings'
    else

      render('edit')
    end
  end

  def show

  end



  private

  def site_info_params
    params.require(:site_info).permit(:site_name,
                                      :site_description,
                                      :contact_phone,
                                      :contact_email,
                                      :contact_address_1,
                                      :contact_address_2,
                                      :contact_city,
                                      :contact_state,
                                      :contact_zip

    )
  end
end
