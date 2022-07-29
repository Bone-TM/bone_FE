class UsersController < ApplicationController

  def login
  end

  def new
  end
  
  def show
    @user = current_user
  end

end
