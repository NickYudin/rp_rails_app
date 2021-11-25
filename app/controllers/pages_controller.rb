class PagesController < ApplicationController

	def index
		redirect_to users_path if logged_in? 
		@users = User.paginate(page: params[:page], per_page: 7)

	end


end
