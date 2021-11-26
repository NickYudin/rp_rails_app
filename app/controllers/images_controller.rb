class ImagesController < ApplicationController

before_action :set_image, only: [:show, :edit, :update, :belongs_to_user?]

	def new

	end

	def index
		@images = Image.all
	end

	def show

	end

	def edit

	end

	def update
		flash[:notice] = "image added"
		redirect_to @image
	end

	private

	def set_image
		@image = Image.find(params[:id])
	end

end