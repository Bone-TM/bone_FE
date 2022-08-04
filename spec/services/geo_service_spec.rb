require 'rails_helper'

RSpec.describe 'Geolocation API' do
  xit 'returns list of user location' do
    parsed_json = GeoService.get_location

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:area][:name]).to be_a String
    expect(parsed_json[:city][:name]).to be_a String
  end
end
