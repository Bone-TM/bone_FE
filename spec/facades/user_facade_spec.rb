require 'rails_helper'

RSpec.describe "User Facade" do

  it "returns an array of user objects" do
    users = UserFacade.create_users
    
    expect(users).to be_an Array
    expect(users.first.name).to be_a String
    expect(users.last.location).to be_a String
  end
end
