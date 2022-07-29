class SessionsController < ApplicationController
    def omniauth
        # user = User.find_or_create_by(uid:request.env['omniauth.auth'][:uid], provider: request.env['omniauth.auth'][:provider]) do |u|
        #     u.name = request.env['omniauth.auth'][:info][:name]
        #     u.email = request.env['omniauth.auth'][:info][:email]
      oauth_response = request.env['omniauth.auth']
      user_data = {}
      user_data[:name] = oauth_response["info"]["name"]
      user_data[:email] = oauth_response["info"]["email"]
      UserService.create_user(user_data)
      session[:email] = user_data[:email]
      redirect_to root_path
    end
  end
#   end
#     end
#         if user.valid?
#             session[:user_id] = user.id
#             redirect_to root_path
#         else
#             redirect_to login_path
#         end
#     end
# end