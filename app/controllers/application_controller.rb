class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  before_filter :authorize

  private
    def authorize
      if current_user.nil?
        flash[:error] = "You must be logged in to access this section"
        redirect_to root_url
      end
    end  

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

end
