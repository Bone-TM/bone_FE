class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def update
    @user = current_user
    user_data = {}
    user_data[:bio] = params[:bio]
    user_data[:location] = params[:location]
    UserService.update_user(@user.id, user_data)
    redirect_to users_dashboard_path
  end

  def edit
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
