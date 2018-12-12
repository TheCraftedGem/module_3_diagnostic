class UserSearchFacade 
  def initialize(zip)
    binding.pry
    @zip = zip 
  end

  def stations
    api_adapter.stations
  end
end