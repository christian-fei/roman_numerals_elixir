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
  @decimal_romans_keys Map.keys @decimal_romans

  def convert(number) when is_number(number) do
    convert_rec(number, "")
  end

  defp convert_rec(0, _), do: ""
  defp convert_rec(decimal, roman) when decimal in @decimal_romans_keys do
    roman <> Map.get @decimal_romans, decimal
  end
  defp convert_rec(decimal, roman) do
    remaining = @decimal_romans_keys
                |> Enum.filter(fn(x) -> x < decimal end)
                |> List.last
    convert_rec(remaining, roman) <> convert(decimal - remaining)
  end
end
