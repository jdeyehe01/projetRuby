class UtilisateursController < ApplicationController
	def index
		@utilisateur = Utilisateur.all
	end

	def show
		@utilisateur = Genre.find(params[:id])
	end
	def new
		@utilisateur = Utilisateur.new
	end
	def create
		@utilisateur = Utilisateur.new(params.require(:utilisateur).permit(:firstName, :lastName , :login))
		if @genre.save
			redirect_to(@utilisateur)
		else
			render 'new'
		end
	end
	
	
	
end