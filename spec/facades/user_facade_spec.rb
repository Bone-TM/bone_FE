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
end
