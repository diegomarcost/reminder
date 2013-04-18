class SessionsController < ApplicationController

  skip_before_filter :authorize, only: [:new, :create]

  def new
  end

  def create
	  user = User.authenticate(params[:email], params[:password])
	  if user
	    session[:user_id] = user.id
	    redirect_to new_task_path
	  else
	    flash.now.alert = "Invalid email or password"
	    render "new"
	  end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url
  end

end
