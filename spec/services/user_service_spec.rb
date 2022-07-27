require 'rails_helper'

RSpec.describe "Users API" do

  it "can retrieve all users from API" do
    users = UserService.get_users
    user = users.first

    expect(users).to be_a Array
    
    expect(user[:attributes]).to include :name, :bio, :email, :password_digest, :location
    expect(user[:attributes][:name]).to be_a String
    expect(user[:attributes][:bio]).to be_a String
    expect(user[:attributes][:email]).to be_a String
    expect(user[:attributes][:password_digest]).to be_a String
    expect(user[:attributes][:location]).to be_a String
  end

end
