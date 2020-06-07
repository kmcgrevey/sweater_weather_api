class ForecastFinder

  def self.get_forecast(location)
    latlong_data = LatLong.new(location)
    # weather = OpenWeatherService.new(latlong_data)
    weather = OpenWeatherService.location_weather(latlong_data)
    hourly_cast = OpenWeatherService.hourly_forecast(weather)
    binding.pry
  end

end