class Geo
  attr_reader :city, :state

  def initialize(geo_data)
    @state = geo_data[:area][:name]
    @city = geo_data[:city][:name]
  end
end
