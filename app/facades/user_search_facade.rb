class UserSearchFacade 
  attr_reader :stations
  def initialize(stations)
    @stations = stations[:fuel_station].map do |station|
      Station.new(station)
    end
  end

  def stations

    api_adastations
  end
end