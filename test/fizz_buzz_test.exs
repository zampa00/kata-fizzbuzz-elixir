defmodule FizzBuzzTest do
  use ExUnit.Case

  test "when 1 say 1" do
    assert FizzBuzz.say(1) == "1"
  end
end
