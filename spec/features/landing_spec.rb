require 'rails_helper'

RSpec.describe 'Landing Page' do

  it "has login, register, and home links" do
    visit root_path
    expect(page).to have_link("Login")
  end

  it "has a section for random dog facts" do
    visit root_path
    expect(page).to have_content("Random Dog Fact:")
  end
end
