class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def update
    @user = current_user
  end

  def new
    oauth_response = request.env['omniauth.auth']
    user_data = {}
    user_data[:name] = oauth_response["info"]["name"]
    user_data[:email] = oauth_response["info"]["email"]
    response = UserService.create_user(user_data)
    session[:email] = user_data[:email]
    redirect_to users_dashboard_path
  end

end
