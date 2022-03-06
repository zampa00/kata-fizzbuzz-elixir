defmodule FizzBuzz do
  @spec say(integer) :: String.t()
  def say(number) do
    rules = [
      whenDivThenSay(3, "Fizz"),
      whenDivThenSay(5, "Buzz")
    ]

    result = Enum.reduce(rules, "", fn rule, acc -> "#{acc}#{rule.(number)}" end)

    if result == "" do
      "#{number}"
    else
      result
    end
  end

  @spec whenDivThenSay(integer, String.t()) :: (integer -> String.t())
  def whenDivThenSay(div_by, say) do
    fn x ->
      if rem(x, div_by) == 0 do
        say
      else
        ""
      end
    end
  end
end
