class UsersController < ApplicationController
  layout "manager"
  before_action :authenticate_user!
  before_action :get_home_page, :get_site_settings, :get_current_user

  def index
    @users = User.all
  end

  def show
  end

  def new

  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if current_user.update(user_params)

      redirect_to edit_user_path(@user), notice: 'User update successful.'
    else

      render('edit')
    end
  end


  private
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name

    )
  end
end
