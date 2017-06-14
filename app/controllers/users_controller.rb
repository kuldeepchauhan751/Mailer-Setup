class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user  = User.new(user_params)
  	if @user.save
  		UserMailer.signup_confirmation(@user).deliver
  		redirect_to @user
    else
  		render 'new'


  	end
  end

  def show
  	@users  =User.all
  end
  private
  def user_params
  	params.require(:user).permit(:name,:email,:image)
  	

  end
end
