class SessionsController < ApplicationController
  
  def new
  end

  def create

  	if ( params[:name].blank? ) 
  		flash[:notice]= "Log In field cannot be blank"
  		redirect_to login_path
  	else
  		session[:name] = params[:name]
  		redirect_to home_path
    end

  end

  def destroy
  	session.clear
  	redirect_to home_path
  end

end
