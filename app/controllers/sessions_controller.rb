class SessionsController < ApplicationController
	def login
		authorized_user = Admin.authenticate(params[:email], params[:password])
		if authorized_user
			session[:user] = authorized_user
		else
			flash[:notice] = 'login failed'
		end
		redirect_to :root
	end

	def logout
		session[:user] = nil
		redirect_to :root
	end
end
