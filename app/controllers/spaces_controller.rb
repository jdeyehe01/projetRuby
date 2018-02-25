class SpacesController < ApplicationController

	before_action :authenticate_user!
	def index
		@spaces = Space.all
	end

	def create
		@manga = Manga.find(params[:id])
		@space = Space.create manga_id: @manga.id
		redirect_to(space_path)
			
	end

	def show
		@spaces = Space.all
	
	end

	def destroy
		@space = Space.find(params[:id])
		@space.destroy
		redirect_to(space_path)
	end
end