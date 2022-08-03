  class UserFacade

  def self.create_users
    users_data = UserService.get_users
    users_data.map do |users_json|
      User.new(users_json)
    end
  end

  def self.find_user(email)
    user_data = UserService.find_user(email)
      User.new(user_data)
  end 

  # def self.find_user_by_id(id)
  #   user_data = UserService.find_user_by_id(id)
  #     User.new(user_data)
  # end
end
