defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  doctest RomanNumeralsElixir

  test "1 to I" do
    assert RomanNumeralsElixir.convert(1) == "I"
  end
  test "2 to II" do
    assert RomanNumeralsElixir.convert(2) == "II"
  end
  test "3 to III" do
    assert RomanNumeralsElixir.convert(3) == "III"
  end
  test "4 to IV" do
    assert RomanNumeralsElixir.convert(4) == "IV"
  end
  test "5 to V" do
    assert RomanNumeralsElixir.convert(5) == "V"
  end
  test "6 to VI" do
    assert RomanNumeralsElixir.convert(6) == "VI"
  end
  test "7 to VII" do
    assert RomanNumeralsElixir.convert(7) == "VII"
  end
  test "8 to VIII" do
    assert RomanNumeralsElixir.convert(8) == "VIII"
  end
  test "9 to IX" do
    assert RomanNumeralsElixir.convert(9) == "IX"
  end
  test "10 to X" do
    assert RomanNumeralsElixir.convert(10) == "X"
  end
  test "40 to XL" do
    assert RomanNumeralsElixir.convert(40) == "XL"
  end
  test "90 to XC" do
    assert RomanNumeralsElixir.convert(90) == "XC"
  end
  test "400 to CD" do
    assert RomanNumeralsElixir.convert(400) == "CD"
  end
  test "49 to XLIX" do
    assert RomanNumeralsElixir.convert(49) == "XLIX"
  end
  test "1999 to MCMXCIX" do
    assert RomanNumeralsElixir.convert(1999) == "MCMXCIX"
  end
end
