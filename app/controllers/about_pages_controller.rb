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
    @about_page = AboutPage.find(params[:id])
  end

  def update
    @about_page = AboutPage.find(params[:id])
    if @about_page.update(about_page_file_params)

      redirect_to edit_about_page_path(@about_page), notice: 'Successfully updated about page'
    else

      render('edit')
    end
  end

  def show

  end



  private

  def about_page_file_params
    params.require(:about_page).permit(
      :top_title,
      :top_description,
      :top_image,
      :scholar1_name,
      :scholar1_major,
      :scholar1_grad_year,
      :scholar1_testimonial,
      :scholar1_image,
      :scholar2_name,
      :scholar2_major,
      :scholar2_grad_year,
      :scholar2_testimonial,
      :scholar2_image,
      :scholar3_name,
      :scholar3_major,
      :scholar3_grad_year,
      :scholar3_testimonial,
      :scholar3_image

    )
  end
end
