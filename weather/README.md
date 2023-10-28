# Weather App

## Introduction
This project is an Elixir application designed to retrieve weather information for a specified location using the OpenWeatherMap API. It provides functions to interact with the API, convert temperature units, and handle response data.

## Getting Started
To get started with the "weather" project, follow these steps:

1. Clone the project from its repository.

2. Ensure you have Elixir and Mix installed on your system.

3. Install project dependencies by running:
   ```bash
   mix deps.get
   ```

4. Obtain an API key from OpenWeather and use it on `Weather.get_appid/0` function.

5. Run the project using the Mix command:
   ```bash
   iex -S mix
   ```

6. Now, you can use the `Weather` module to access weather information for different locations by running the following examples in the interactive Elixir shell:

   ```elixir
   iex(1)> Weather.temperature_of("Curitiba")
   "Curitiba: 19.4 ºC"

   iex(2)> Weather.temperature_of("Rio de Janeiro")
   "Rio de Janeiro: 23.9 ºC"

   iex(3)> Weather.temperature_of("São Paulo")
   "São Paulo: 25.0 ºC"

   iex(4)> Weather.temperature_of("XPTO")
   "XPTO not found"
   ```

## Dependencies
The "weather" project depends on the following Elixir libraries:

- `httpoison`: A library for making HTTP requests.
- `json`: A library for parsing and encoding JSON data.

These dependencies are defined in the `mix.exs` file and are automatically fetched when you run `mix deps.get`.
