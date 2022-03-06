defmodule FizzBuzz do

  @spec say(integer) :: String.t()
  def say(number) do
    get_rules()
    |> apply_rules(number)
    |> apply_default_rule(number)
  end

  @spec get_rules() :: list((integer -> String.t()))
  def get_rules() do
    [
      whenDivThenSay(3, "Fizz"),
      whenDivThenSay(5, "Buzz")
    ]
  end

  @spec apply_rules(list((integer -> String.t())), integer) :: String.t()
  def apply_rules(rules, number) do
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
