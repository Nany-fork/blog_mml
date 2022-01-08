class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # before_action -> {Rails.logger.info("save")}
    if @user.save
      redirect_to :root
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :sex, :email, :age)
  end
end
