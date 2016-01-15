class SessionsController < ApplicationController
	def index
		if current_user
			flash[:notice] = "You are logged on as #{@currentUser.email}"
		end
	end

	def create
		user = User.where(email: params[:email]).first

	end

	def destroy
	end
end
