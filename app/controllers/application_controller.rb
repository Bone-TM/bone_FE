class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    UserFacade.find_user(session[:email]) if session[:email]
  end
end
