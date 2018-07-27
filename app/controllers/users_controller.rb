class UsersController < ApplicationController
	
	def index
	end

	def new
	end

	def create
    	@user = User.new(user_params)
    	if @user.save
      		redirect_to users_path
    	else
      		# This line overrides the default rendering behavior, which
      		# would have been to render the "create" view.
      		render :action => "new"
    	end
  	end
	private 
		def user_params
			params.require(:user).permit!
			# (:first_name, :phone_number, :email, :last_name, :password, :confirm_password)
		end

end
