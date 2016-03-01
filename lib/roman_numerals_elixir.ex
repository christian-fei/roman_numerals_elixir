defmodule RomanNumeralsElixir do
  @decimal_romans %{
    1     => "I",
    4     => "IV",
    5     => "V",
    9     => "IX",
    10    => "X",
    40    => "XL",
    50    => "L",
    90    => "XC",
    100   => "C",
    400   => "CD",
    500   => "D",
    900   => "CM",
    1000  => "M",
  }

  def convert(number) when is_number(number) do
    convert_rec(number, "")
  end

  defp convert_rec(0, _), do: ""
  defp convert_rec(remaining, roman) do
    case matches_numeral remaining do
      false -> reduce_nearest_roman(remaining, roman)
      number -> roman <> number
    end
  end

  defp reduce_nearest_roman(remaining, roman) do
    step = nearest_roman(remaining)
    convert_rec(step, roman) <> convert(remaining - step)
  end

  defp nearest_roman(decimal) do
    @decimal_romans
    |> Map.keys
    |> Enum.filter(fn(x) -> x < decimal end)
    |> List.last
  end

  defp matches_numeral(number) do
    case Map.get @decimal_romans, number do
      nil   -> false
      roman -> roman
    end
  end
end
