defmodule FizzBuzzTest do
  use ExUnit.Case

  test "when 1 say 1" do
    assert FizzBuzz.say(1) == "1"
  end

  test "when 2 say 2" do
    assert FizzBuzz.say(2) == "2"
  end

  test "when 3 say Fizz" do
    assert FizzBuzz.say(3) == "Fizz"
  end

  test "when 6 say Fizz" do
    assert FizzBuzz.say(6) == "Fizz"
  end

  test "when 5 say Buzz" do
    assert FizzBuzz.say(5) == "Buzz"
  end

  test "when 10 say Buzz" do
    assert FizzBuzz.say(10) == "Buzz"
  end
end
