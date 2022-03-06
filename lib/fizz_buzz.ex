defmodule FizzBuzz do
  import FizzBuzzRule
  @type rule :: FizzBuzzRule.rule

  @spec say(integer) :: String.t()
  def say(number) do
    say(number, get_default_rules())
  end

  @spec say(integer, list(rule)) :: String.t()
  def say(number, rules) do
    rules
    |> apply_rules(number)
    |> apply_default_rule(number)
  end
end
