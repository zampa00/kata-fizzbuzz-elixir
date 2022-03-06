defmodule FizzBuzzRule do
  @type rule :: (integer -> String.t())

  def get_default_rules() do
    [
      when_div_then_say(3, "Fizz"),
      when_div_then_say(5, "Buzz")
    ]
  end

  @spec apply_rules(list(rule()), integer) :: String.t()
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

  @spec when_div_then_say(integer, String.t()) :: rule
  def when_div_then_say(div_by, say) do
    fn x ->
      if rem(x, div_by) == 0 do
        say
      else
        ""
      end
    end
  end
end
