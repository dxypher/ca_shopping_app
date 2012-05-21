class SessionsController < ApplicationController

	def new
	 #login page		
	end
	def create
		user = User.find_by_username(params[:username])
		if user && user.authenticate(params[:password])
			session[:login_id] = user.id
			redirect_to root_url, notice: "Hello, #{user.username}!"
		else
			redirect_to root_url, notice: "Login Failed. Try Again"
		end
	end

	def destroy
		session[:login_id] = nil
		flash[:notice] = "Bye!"
		redirect_to root_url
	end
end