require 'rails_helper'

RSpec.describe "Dog Image API" do

  it "returns list of all dog breeds available" do
    parsed_json = DogPictureService.get_breeds
    binding.pry
  end


end
