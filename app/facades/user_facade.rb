class UserFacade

  def self.create_users
    users_data = UserService.get_users
    users_data.map do |users_json|
      User.new(users_json)
    end
  end

end
