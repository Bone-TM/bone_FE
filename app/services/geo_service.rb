class GeoService
  def self.get_url(url)
    conn = Faraday.new(url: 'https://ip-geo-location.p.rapidapi.com/') do |faraday|
      faraday.params[:format] = 'json'
      faraday.params['rapidapi-key'] = ENV['location_api_key']
      faraday.params['x-rapidapi-host'] = ['ip-geo-location.p.rapidapi.com']
      faraday.params[:filter] = 'city,area'
    end

    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_location
    get_url('/ip/check')
  end
end
