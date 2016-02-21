class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, :except => :show

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless current_user.admin?
      unless @user == current_user
        redirect_to :back, :alert => "Access denied."
      end
    end
  end

  def update
    byebug
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      if @user.profile_type == "mentee"
        redirect_to mentee_path, :notice => "Mentee Created"
      else if @user.profile_type == "mentor"
        redirect_to mentor_path, :notice => "Mentor Created"
      end
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

  def secure_params
    params.require(:user).permit(:role, :name, :email, :password, :mentor_profile, :mentee_profile, :profile_type)
  end

end
