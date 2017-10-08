# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

class Integer
  #we are writing our own method that is generally describing prime meaning, that
  #we would use in a method chain later
  def prime? #prime numbers devide only from itself and #1 only. Can't return 0 for modulus 2,3,5..
    return false if self < 2 #self here is refering to the number that is being investigated as prime number
    #we started by excluding the whole range of negative numbers, 0 and 1 - as they are not considered prime numbers,
    2.upto Math.sqrt(self) do |i|
      return false if self % i == 0
    end
    #starting from 2 upwards, apply square root function on the number (self); return false if the number devided by the
    #square root result returns Modulus equal to zero, which means the number can be devided by more than just itself and 1, but has the 3rd number it devides to.
    true
    #if none of the above conditions come out to be false, return true.
  end #of method definition
end #of class definition



def prime_chars?(string_arr)
string_arr.join.length.prime? #to calculate acurately, we have to remove the gaps between strings. that's why we .join first, then fidn its .length and use our defined class method .prime? to determine if it indeed is a prime
end
