class SearchController < ApplicationController
  def index
  
    zip = params[:q]
    @conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.headers['X-Api-Key'] = ENV["api_key"]
      faraday.adapter Faraday.default_adapter
     
    end
    response = @conn.get("api/alt-fuel-stations/v1/nearest.json?location=#{zip}")
  
    @stations = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end
