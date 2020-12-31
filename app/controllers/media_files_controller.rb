class MediaFilesController < ApplicationController
  layout "manager"

  before_action :authenticate_user!



  def index
    @media_files = MediaFile.all
  end

  def show
    @media_file = MediaFile.find(params[:id])
  end

  def new
    @media_file = MediaFile.new()

  end

  def create
    @media_file = MediaFile.new(media_file_params)

    if @media_file.save
      puts 'success'
      redirect_to edit_media_file_path(@media_file), notice: 'Successfully uploaded media file'
    else
      puts 'error'
      render('new')
    end
  end

  def edit
    @media_file = MediaFile.find(params[:id])
  end

  def update
    @media_file = MediaFile.find(params[:id])
    if @media_file.update(media_file_params)

      redirect_to edit_media_file_path(@media_file), notice: 'Successfully uploaded media file'
    else

      render('edit')
    end
  end

  def destroy
    @media_file = MediaFile.find(params[:id])
    @media_file.file.purge
    @media_file.destroy
    redirect_to media_files_path, notice: 'Successfully deleted file'


  end

  private

  def media_file_params
    params.require(:media_file).permit(:name, :description, :file_type, :file)
  end
end
