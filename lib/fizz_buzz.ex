defmodule FizzBuzz do
  @spec say(integer) :: String.t()
  def say(number) do
    if rem(number, 15) == 0 do
      "FizzBuzz"
    else
      if rem(number, 3) == 0 do
        "Fizz"
      else
        if rem(number, 5) == 0 do
          "Buzz"
        else
          "#{number}"
        end
      end
    end
  end
end
