class ImagesController < ApplicationController

	before_action :set_image, only: [:show, :edit, :update, :belongs_to_user?, :accept_image, :add_image]


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
		if @image.update(image_params)
			flash[:notice] = "Success"
			redirect_to @image
		else
			render "image_path"
		end
	end

	def accept_image
		@image.accepted = true
		@image.save
		flash[:notice] = "Image accepted!"
		redirect_to @image
	end

	def add_image
		current_user.images << @image
		flash[:notice] = "Image added to collection!"
		redirect_to @image
	end

	def rmv_image
		current_user.images.destroy(@image)
		flash[:alert] = "Image removed from collection!"
		redirect_to @image
	end

	def can_accept_images?
		is_admin? || is_publisher?
	end

	private

	def set_image
		@image = Image.find(params[:id])
	end

	def image_params
		params.require(:image).permit(:accepted)
	end

end