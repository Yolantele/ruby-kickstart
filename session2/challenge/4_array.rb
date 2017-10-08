# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares
##before testing using rake 2:4
#def get_squares(num_arr)
#  to_return = ''
#num_arr.select do |a|
#  to_return << a if num_arr.include? a*a
#end
#end

def get_squares(num)
  num.select {|a| num.include? a*a}.sort
end
