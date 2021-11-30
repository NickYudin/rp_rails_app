class ImagesController < ApplicationController

before_action :set_image, only: [:show, :edit, :update, :belongs_to_user?]

	def new

	end

	def index
		@images = Image.accepted.all
	end

	def show

	end

	def edit

	end

	def update
		if @image.update(image_params)
			flash[:notice] = "Success"
			redirect_to @image
		else
			render "image_path"
		end
	end

	private

	def set_image
		@image = Image.find(params[:id])
	end

	def image_params
		params.require(:image).permit(:accepted)
	end

end