defmodule RomanNumeralsElixir do
  def convert(number) when is_number(number) do
    convert_rec(number, "")
  end

  defp convert_rec(0, _), do: ""
  defp convert_rec(remaining, roman) do
    case matches_numeral remaining do
      false -> magic(remaining, roman)
      number -> roman <> number
    end
  end

  defp magic(remaining, roman) do
    step = nearest_roman(remaining)
    convert_rec(step, roman) <> convert(remaining - step)
  end

  defp nearest_roman(decimal) do
    map = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
    roman_decimals = Enum.filter(map, fn(x) -> x < decimal end)
    List.last roman_decimals
  end

  defp matches_numeral(number) do
    case number do
      1     -> "I"
      4     -> "IV"
      5     -> "V"
      9     -> "IX"
      10    -> "X"
      40    -> "XL"
      50    -> "L"
      90    -> "XC"
      100   -> "C"
      400   -> "CD"
      500   -> "D"
      900   -> "CM"
      1000  -> "M"
      _    -> false
    end
  end
end
