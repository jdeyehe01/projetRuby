class AuteursController < ApplicationController
	before_action :set_auteur, only: [:show, :edit, :update, :destroy]

	def index
		@auteurs = Auteur.all
	end

	def show; end

	def new
		@auteur = Auteur.new
	end

	def create
		@auteur = Auteur.new(auteur_params)
		if(@auteur.save)
			redirect_to(@auteur)
		else
			render 'new'
		end
	end

	def edit; end

	def update
		if @auteur.update(auteur_params)
			redirect_to(@auteur)
		else
			render 'edit'
		end
	end

	def destroy
		@auteur.destroy
		redirect_to(auteurs_path)
	end

	private

	def set_auteur
		@auteur = Auteur.find(params[:id])
	end

	def auteur_params
		params.require(:auteur).permit(
				:last_name, :first_name, :birthday)
	end
end