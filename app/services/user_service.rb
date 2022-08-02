class UserService

  def self.get_users
    response = connection.get('users')
    if !response.body.empty?
      data = JSON.parse(response.body, symbolize_names: true)[:data]
    end
  end

  def self.connection
    Faraday.new(url: 'https://bone-back.herokuapp.com/api/v1/')
  end

  def self.create_user(user_data)
    connection.post('users') do |user|
      user.params[:name] = user_data[:name]
      user.params[:email] = user_data[:email]
    end
  end

  def self.find_user(email)
    response = connection.get("users/find?email=#{email}")
    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.update_user(id, user_data)
    response = connection.patch("users/#{id}") do |user|
      user.params[:bio] = user_data[:bio]
      user.params[:location] = user_data[:location]
    end
  end
end
