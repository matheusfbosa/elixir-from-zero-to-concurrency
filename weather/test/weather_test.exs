defmodule WeatherTest do
  use ExUnit.Case, async: true

  @api "http://api.openweathermap.org/data/2.5/weather?q="

  test "should return an encoded endpoint when take a location" do
    appid = Weather.get_appid()

    endpoint = Weather.get_endpoint("São José dos Pinhais")

    assert "#{@api}S%C3%A3o%20Jos%C3%A9%20dos%20Pinhais&appid=#{appid}" == endpoint
  end

  test "should return Celsius when take Kelvin" do
    kelvin = 296.48
    celsius = 23.3

    result = Weather.kelvin_to_celsius(kelvin)

    assert result == celsius
  end

  test "should return temperature when take a valid location" do
    temperature = Weather.temperature_of("São José dos Pinhais")

    assert String.contains?(temperature, "São José dos Pinhais")
  end

  test "should return not found when take an invalid location" do
    result = Weather.temperature_of("XPTO")

    assert result == "XPTO not found"
  end
end
