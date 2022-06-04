defmodule Year do
  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400

  Solution from: https://exercism.org/tracks/elixir/exercises/leap/solutions/mystvearn147

  Notes
  - Uses shorter function syntax
  - Uses `or` instead of the weird logic I did 🤦‍♀️
  """
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year), do: rem(year, 400) == 0 or (rem(year, 4) == 0 and rem(year, 100) != 0)
end
