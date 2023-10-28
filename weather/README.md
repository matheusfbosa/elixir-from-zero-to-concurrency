# Weather App

An Elixir application designed to retrieve weather information for a specified location using the [OpenWeatherMap API](https://openweathermap.org/api). It provides functions to interact with the API, convert temperature units, and handle response data.

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

6. Now, you can use the `Weather` module to access weather information for different locations by running the following example in the interactive Elixir shell:
   ```elixir
   iex(1)> ["Curitiba", "Guarapuava", "Foz do Iguaçu", "Rio de Janeiro", "São Paulo", "XPTO"] |> Weather.start()
   ["Curitiba: 19.3 ºC", "Guarapuava: 18.2 ºC", "Foz do Iguaçu: 20.4 ºC", "Rio de Janeiro: 27.0 ºC", "São Paulo: 25.0 ºC", "XPTO not found"]
   ```

## Dependencies
The "weather" project depends on the following Elixir libraries:

- `httpoison`: A library for making HTTP requests.
- `json`: A library for parsing and encoding JSON data.

These dependencies are defined in the `mix.exs` file and are automatically fetched when you run `mix deps.get`.
