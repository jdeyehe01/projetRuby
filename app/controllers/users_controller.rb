class UsersController < ApplicationController
  def index
  end

  def login
  end

  def check
  	@current_user = User.where(name: params[:name], pw: params[:pw]).first

	  	if @current_user
	  		flash[:info] = "Bienvenue #{@current_user.name} ! "
	  		redirect_to "/users/index"		
	  	else

	  		flash[:info] = "Échec de la connexion"
	  		redirect_to "/users/login"
	  	end		
	end

end
