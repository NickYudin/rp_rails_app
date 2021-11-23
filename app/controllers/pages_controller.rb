class PagesController < ApplicationController

	def home #rename to index!!!!!!!!!!!!!!!!!!!!!!!
		@users = User.all
	end


end
