class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update]

	def index
		@users = User.all
	end

	def show
	end

	def edit
	end

	def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

	private
	def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :nickname, :address, :latitude, :longitude, :description, :birthday, :gender)
  end

	def set_user
    @user = User.find(params[:id])
  end
end
