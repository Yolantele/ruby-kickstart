#TASK:
# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

##initial code version
#class String
#  def every_other_char
#  input = gets.chomp.to_s
#  input.size.times.map {|n| n % 2 == 1}
#  end
#end

## After tests using rake 2:3
#class String
#  def every_other_char
#  input = gets.chomp.to_s
#  to_return = ""
#   input.each.map {|n| n % 2 == 1}
#  end
#  puts "#{String.every_other_char}"
#end

##After glimpsing the solution sheet
class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end
