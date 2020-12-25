class HomePagesController < ApplicationController
  layout "manager"

  before_action :authenticate_user!

  def new
    @home_page = HomePage.active.nil? ? HomePage.new : HomePage.active
    redirect_to edit_home_page_path(@home_page)
  end

  def create

  end

  def edit
    @home_page = HomePage.active
  end

  def update
    @home_page = HomePage.find(params[:id])
    if @home_page.update(home_page_file_params)

      redirect_to edit_home_page_path(@home_page), notice: 'Successfully home page'
    else

      render('edit')
    end
  end

  def show

  end



  private

  def home_page_file_params
    params.require(:home_page).permit(:hero_title,
                                      :hero_description,
                                      :hero_image,
                                      :about_section_title,
                                      :about_section_description,
                                      :about_image
                                     )
  end

end
