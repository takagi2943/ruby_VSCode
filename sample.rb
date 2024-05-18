puts 1 + 2

a = 'Hello, world!'
puts a

b = 'こんにちは'
puts b

# data = find_data
#     if data
#         'データがあります'
#     else
#         'データはありません'
#     end 

# country = 'italy'
# if country == 'japan'
#     puts 'こんにちは'
# elsif country == 'us'
#     puts 'Hello'
# elsif country == 'italy'
#     puts 'Ciao'
# else
#     puts '???'
# end

# point = 7
# day = 1
# if day == 1
#     point *= 5
# end
# point

def fizz_buzz(n)
  if n % 15 == 0
    'FIizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end 
end 

# require 'minitest/autorun'

# class FIizzBuzz < Minitest::Test
#   def test_fizz_buzz
#     assert_equal '1', fizz_buzz(1)
#     assert_equal '2', fizz_buzz(2)
#     assert_equal 'Fizz', fizz_buzz(3)

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)

