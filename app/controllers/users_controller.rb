class UsersController < ApplicationController
  before_filter :signed_in_user, only: [ :index,:edit, :update,:destroy]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user,  only: :destroy
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  def destroy
    user.find(params[:id]).destroy
    flash[:success] = "user destroyed."
    redirect_to users_path
  end
  def new
    @user = User.new
    aa  @title = "Sign up"
  end
  def edit
  end
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  private
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "please sign in."
    end
  end
  def correct_user
    @user = user.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end
  def index
    @users = user.paginate(page: params[:page])
  end
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
def show
 @user = user.find(params[:id])
 @microposts = @user.microposts.paginate(page; params[:page])
end
end
