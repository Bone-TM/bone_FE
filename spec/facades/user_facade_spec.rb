require 'rails_helper'

RSpec.describe "User Facade" do

  it "returns an array of user objects" do
    json = JSON.parse(File.read('./spec/fixtures/user_data.json'), symbolize_names: true)
    users = json[:data].map do |users_json|
      User.new(users_json)
    end
    allow(UserFacade).to receive(:create_users).and_return(users)

    expect(users).to be_an Array
    expect(users.first.name).to be_a String
    expect(users.last.location).to be_a String
  end

  it "returns a user object" do
    json = JSON.parse(File.read('./spec/fixtures/find_user.json'), symbolize_names: true)
    user = User.new(json[:data])
    allow(UserFacade).to receive(:find_user).and_return(user)

    expect(user).to be_a User
    expect(user.id).to be_a String
    expect(user.name).to eq("Nicholas Jacobs")
    expect(user.email).to eq("nickjacobsatc@gmail.com")
  end
end
