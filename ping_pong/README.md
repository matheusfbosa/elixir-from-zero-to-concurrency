# Ping Pong

This is a simple example of a "ping pong" game implemented in Elixir, where two processes (Ping and Pong) communicate by exchanging messages.

## How to Run the Project

Make sure you have Elixir installed in your development environment.

1. Clone this repository to your system:

```shell
git clone https://github.com/your-username/ping_pong_elixir.git
```

2. Navigate to the project directory:

```shell
cd ping_pong_elixir
```

3. Start an interactive Elixir terminal:

```shell
iex -S mix
```

4. Within the Elixir terminal, start the game by executing the `App.Table.start()` module:

```elixir
App.Table.start
```

This will initiate the `Ping` process and the `Pong` process, which will start exchanging messages.

## How the Game Works

In this game, we have two main modules: `App.Ping` and `App.Pong`. Each represents a player (Ping and Pong) and has a `wait/0` function that waits to receive a message from the other player. When a message is received, the player responds with another message and prints a message to the standard output.

The `App.Table` module is responsible for starting the players and initiating the game. It creates two separate processes for `Ping` and `Pong` using the `spawn/3` function and starts the game by sending an initial message from `Ping` to `Pong`.

## Sample Output

After starting the game, you will see output similar to the following:

```
Ping received
Pong received
Ping received
Pong received
Ping received
Pong received
...
```

The game will continue indefinitely with the players "pinging" and "ponging" messages between each other.

## Conclusion

This is a simple example of how to implement process communication in Elixir. You can explore and modify the source code to experiment with different player behaviors or add additional features to the game. Enjoy!
