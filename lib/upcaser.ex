defmodule Upcaser do
  @moduledoc """
  Documentation for Upcaser.
  """

  def start do
    loop()
  end

  def loop do
    receive do
      { string, from } ->
        send(from, { :ok, String.upcase(string) })
    end
    loop()
  end
end
