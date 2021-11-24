class PagesController < ApplicationController

	def index
		redirect_to battles_path if logged_in? 
		@users = User.paginate(page: params[:page], per_page: 7)

	end


end
