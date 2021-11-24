class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Welcome to RB-crew, #{@user.username}! You're successfully signed up!"
			@user.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

end