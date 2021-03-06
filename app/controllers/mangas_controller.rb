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

		@manga = Manga.new(params.require(:manga).permit(:title, :title_traduction, :realise_date, :tome_number,:auteur_id,:genre_id,:image_id))

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