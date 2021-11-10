class BattlersController < ApplicationController

	def show
		@battler = Battler.find(params[:id])
	end

	def index
		@battlers = Battler.all
	end

end