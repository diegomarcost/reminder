class UsersController < ApplicationController

	skip_before_filter :authorize, only: [:new, :create]
	
	def new
	  @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	  	flash[:notice] = 'Signed up!'
	    redirect_to root_url
	  else
	    render "new"
	  end
	end

end
