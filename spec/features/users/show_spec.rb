require 'rails_helper'

RSpec.describe 'User Show Page' do

  before :each do
    @user = User.new({attributes: {name: "Jim", email: "isuck@gmail.com"}})
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end

  it "shows user details" do
    visit users_dashboard_path
save_and_open_page
    expect(page).to have_content("Jim")
    expect(page).to have_content("isuck@gmail.com")  
  end
end