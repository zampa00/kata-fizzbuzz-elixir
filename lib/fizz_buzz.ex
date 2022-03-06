defmodule FizzBuzz do
  @spec say(integer) :: String.t()
  def say(number) do
    rules = [
      fn x ->
        if rem(x, 3) == 0 do
          "Fizz"
        else
          ""
        end
      end,
      fn x ->
        if rem(x, 5) == 0 do
          "Buzz"
        else
          ""
        end
      end
    ]

    result = Enum.reduce(rules, "", fn rule, acc -> "#{acc}#{rule.(number)}" end)

    if result == "" do
      "#{number}"
    else
      result
    end
  end
end
