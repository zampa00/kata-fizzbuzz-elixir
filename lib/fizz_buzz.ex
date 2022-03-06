defmodule FizzBuzz do
  @spec say(integer) :: String.t()
  def say(number) do
    rules = [
      whenDivThenSay(3, "Fizz"),
      whenDivThenSay(5, "Buzz")
    ]

    number
    |> apply_rules(rules)
    |> apply_default_rule(number)
  end

  @spec apply_rules(integer, list((integer -> String.t()))) :: String.t()
  def apply_rules(number, rules) do
    Enum.reduce(rules, "", fn rule, acc -> "#{acc}#{rule.(number)}" end)
  end

  @spec apply_default_rule(String.t(), integer) :: String.t()
  def apply_default_rule(result, number) do
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
