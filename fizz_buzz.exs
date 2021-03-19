# multple of 3 -> fizz
# multple of 5 -> buzz
# multple of 3 & 5 -> fizzbuzz
# otherwise the number

defmodule FizzBuzz do
  def main(number) do
    cond do
      rem(number, 15) === 0 ->
        IO.puts("#{number}: fizzbuzz")

      rem(number, 3) === 0 ->
        IO.puts("#{number}: fizz")

      rem(number, 5) === 0 ->
        IO.puts("#{number}: buzz")

      true ->
        IO.puts(number)
    end
  end
end

# 1
FizzBuzz.main(1)
# 2
FizzBuzz.main(2)
# fizz
FizzBuzz.main(3)
# 4
FizzBuzz.main(4)
# buzz
FizzBuzz.main(5)
# fizz
FizzBuzz.main(6)
# 7
FizzBuzz.main(7)
# 8
FizzBuzz.main(8)
# fizz
FizzBuzz.main(9)
# buzz
FizzBuzz.main(10)
# 11
FizzBuzz.main(11)
# fizz
FizzBuzz.main(12)
# 13
FizzBuzz.main(13)
# 14
FizzBuzz.main(14)
# fizzbuzz 
FizzBuzz.main(15)
# fizzbuzz 
FizzBuzz.main(30)
