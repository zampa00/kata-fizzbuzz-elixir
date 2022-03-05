defmodule FizzBuzz do
  @spec say(integer) :: String.t()
  def say(number) do
    if rem(number, 3) == 0 do
      "Fizz"
    else
      "#{number}"
    end
  end
end
