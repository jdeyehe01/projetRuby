class MangasController < ApplicationController
	def index
		@mangas = Manga.all
		@genre = Genre.all
	end

	def show
		@manga = Manga.find(params[:id])
	end
	def new
		@manga = Manga.new
	end
	def create
		@manga = Manga.new(manga_params)
		@genre = Gnere.new(genre_params)
		if @manga.save
			redirect_to(@manga)
		else
			render 'new'
		end
	end
	def edit
		@manga = Manga.find(params[:id])
	end
	def update
		@manga = Manga.find(params[:id])
		if @manga.update(manga_params)
			redirect_to(@manga)
		else
			render 'edit'
		end
	end
	def destroy
		@manga = Manga.find(params[:id])
		@manga.destroy
		redirect_to(mangas_path)
	end
end