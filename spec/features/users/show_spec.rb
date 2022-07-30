require 'rails_helper'

RSpec.describe 'User Show Page' do

  before :each do
    @user = User.new({attributes: {name: "Jim", email: "isuck@gmail.com"}})
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end

  it "shows user details" do
    visit users_dashboard_path
    expect(page).to have_content("Jim's Dashboard")
    expect(page).to have_content("Email: isuck@gmail.com")
    expect(page).to have_button("Add Dog to Profile")
    expect(page).to have_button("Update User Info")
  end
end
