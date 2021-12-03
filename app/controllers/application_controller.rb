class ApplicationController < ActionController::Base

helper_method :current_user, :logged_in?, :belongs_to_user?#, :accept_image

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		!!current_user
	end

	def require_user
		if !logged_in?
			flash[:notice] = "You must be logged in to access this action"
			redirect_to login_path
		end
	end
	
	def belongs_to_user?
		current_user.images.ids.include?(@image.id)
	end


	# def accept_image
	# 	@image.accepted = true
	# 	@image.save
	# 	flash[:notice] = "Image accepted!"
	# 	redirect_to @image
	# end

end
