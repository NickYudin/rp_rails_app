class UsersController < ApplicationController

before_action :set_user, only: [:show, :edit, :update, :destroy]
before_action :require_user, only: [:edit, :update]
before_action :require_same_user, only: [:edit, :update]


	def index
		@users = User.paginate(page: params[:page], per_page: 8)
	end 

	def new
		@user = User.new
	end

	def edit
		
	end

	def update
		if @user.update(user_params)
			flash[:notice] = "You are successfully updated user info"
			redirect_to @user
		else
			render 'edit'
		end
	end

	def show
		
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Welcome to RB-crew, #{@user.username}! You're successfully signed up!"
			redirect_to root_path
		else
			render 'new'
		end
	end


	def destroy
		@user.destroy
		session[:user_id] =nil if @user != current_user
		flash[:notice] = "User successfully deleted"
		redirect_to root_path
	end
	
	private

	def user_params
		params.require(:user).permit(:username, :email, :password, imgage_ids: [])
	end

	def set_user
		@user = User.find(params[:id])
	end

	def require_same_user

		if current_user != @user 
			flash[:notice] = "You can only edit your account"
			redirect_to user_path
		end
	end

end