class DirectionsService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "https://maps.googleapis.com/maps/api/directions/json?")
  end

  def directions(origin, destination)
    parse(get_directions(origin, destination))
  end

  def get_directions(origin, destination)
    Faraday.new(url: "https://maps.googleapis.com/maps/api/directions/json?origin=#{origin}&destination=#{destination}&key=#{ENV["google_maps"]}").get
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
