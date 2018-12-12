class UserSearchFacade 
  attr_reader :stations
  
  def initialize(stations)
    @stations = stations[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

  def stations
    @stations
  end
end