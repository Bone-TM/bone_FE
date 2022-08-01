require 'rails_helper'

RSpec.describe "Users API" do

  it "can retrieve all users from API" do
    users = UserService.get_users
    
    if !users.nil?
      user = users.first
      expect(users).to be_a Array

      expect(user[:attributes]).to include :name, :bio, :email, :location
      expect(user[:attributes][:name]).to be_a String
      expect(user[:attributes][:bio]).to be_a String
      expect(user[:attributes][:email]).to be_a String
      expect(user[:attributes][:location]).to be_a String
    end
  end

  it "can retrieve a user by email" do
    user = UserService.find_user("nickjacobsatc@gmail.com")
    
    expect(user[:attributes]).to include :name, :bio, :email, :location, :pets
    expect(user[:attributes][:name]).to be_a String
    expect(user[:attributes][:email]).to be_a String   
  end
end
