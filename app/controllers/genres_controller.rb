class GenresController < ApplicationController
	def index
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.new(genre_params)
		if @genre.save
			redirect_to(@genre)
		else
			render 'new'
		end
		redirect_to(genres_path)
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
		@genre = Genre.find(params[:id])
		if @genre.update(
			params.require(:genre).permit(
				:name, :age , :description))
			redirect_to(@genre)
		else
			render 'edit'
		end
	end

	def destroy
		@genre = Genre.find(params[:id])
		@genre.destroy
		redirect_to(genres_path)
	end
end

