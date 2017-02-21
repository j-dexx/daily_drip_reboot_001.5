defmodule UpcaserTest do
  use ExUnit.Case
  doctest Upcaser

  test "it upcases the provided string" do
    upcaser = spawn(Upcaser, :start, [])
    send(upcaser, { "some string", self() })
    assert_receive {:ok, "SOME STRING" }
  end
end
