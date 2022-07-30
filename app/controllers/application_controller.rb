class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        User.find(session[:email]) if session[:email]
    end
    
end
