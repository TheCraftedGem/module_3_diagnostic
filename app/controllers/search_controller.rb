class SearchController < ApplicationController
  def index
    zip = params[:zip]
    @conn = Faraday.new(url: "https://developer.nrel.gov/api") do |faraday|
      faraday.headers["api_key"] = "y8aUxWBstojUPi0gCjpcKT9On6Sak8nvV1BABUTX"
      faraday.adapter Faraday.default_adapter
    end

    response = @conn.get("alt-fuel-stations/v1.json")
  
    @stations = JSON.parse(response.body, symbolize_names: true)
  end
end
