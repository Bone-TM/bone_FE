class GeoFacade
  def self.create_location
    geo_data = GeoService.get_location
    Geo.new(geo_data)
  end
end
