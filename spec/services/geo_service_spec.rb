require 'rails_helper'

RSpec.describe 'Geolocation API' do
  it 'returns list of user location' do
    parsed_json = GeoService.get_location
    require 'pry'
    binding.pry
    expect(parsed_json).to be_a Hash
  end
end