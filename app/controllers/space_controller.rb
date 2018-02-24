class SpaceController < ApplicationController
	 before_action :authenticate_user!

	def index
		@espaces = Space.all
	end

	def show; end

	def destroy
		@espace.destroy
		
	end

end