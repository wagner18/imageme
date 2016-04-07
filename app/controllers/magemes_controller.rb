class MagemesController < ApplicationController
	before_action :find_mageme, only: [:show, :edit, :update, :destroy]

	def index
		@magemes = Mageme.all.order("created_at DESC")
	end

	def show

	end

	def new
		@mageme = Mageme.new
	end

	def create
		@mageme = Mageme.new(mageme_params)

		if(@mageme.save)
			redirect_to(@mageme, notice: "Successfully created new Mageme")
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if(@mageme.update(mageme_params))
			redirect_to(@mageme, notice: "Mageme updated")
		else
			render 'edit'
		end
	end

	def destroy
		@mageme.destroy
		redirect_to(root_path)
	end

	private

	def mageme_params
		params.require(:mageme).permit(:title, :description)
	end

	def find_mageme
		@mageme = Mageme.find(params[:id])
	end

end
