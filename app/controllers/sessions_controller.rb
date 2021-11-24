class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(email: params[:email].downcase)
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "You logged in successfuly!"
			redirect_to user
		else
			flash.now[:alert] = "Something was wrong... Try to log in one more time"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "You're logged out"
		redirect_to root_path
	end

end