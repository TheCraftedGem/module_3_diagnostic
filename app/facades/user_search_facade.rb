class UserSearchFacade 
  attr_reader :stations
  def initialize(zip)
    @zip = zip 
  end

  def stations
    api_adapter.stations
  end
end