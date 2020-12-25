class AboutPagesController < ApplicationController
  layout "manager"

  before_action :authenticate_user!

  def new
    @about_page = AboutPage.active.nil? ? AboutPage.new : AboutPage.active
    redirect_to edit_about_page_path(@about_page)
  end

  def create

  end

  def edit
    @about_page = AboutPage.active
  end

  def update
    @about_page = AboutPage.find(params[:id])
    if @about_page.update(about_page_file_params)

      redirect_to edit_about_page_path(@about_page), notice: 'Successfully home page'
    else

      render('edit')
    end
  end

  def show

  end



  private

  def about_page_file_params
    params.require(:about_page).permit(
    )
  end
end
