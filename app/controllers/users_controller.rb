class UsersController < ApplicationController
  def user
   
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to :root
    else
      render :new, status: :unprocessable_entity
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :sex, :email, :age, :terms)
  end
  
end
