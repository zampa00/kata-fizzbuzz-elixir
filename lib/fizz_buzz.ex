defmodule FizzBuzz do
  @spec say(integer) :: String.t()
  def say(number) do
    if number == 3 do
      "Fizz"
    else
      "#{number}"
    end
  end
end
