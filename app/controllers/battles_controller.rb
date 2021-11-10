class BattlesController < ApplicationController

	def show
		@battle = Battle.find(params[:id])
	end

	def index
		@battles = Battle.all
	end

end