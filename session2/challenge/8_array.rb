# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

##code before looking at solution
#def got_three?(elements)
# elements.each.sort.uniq do |e|
#   true if e.times == 3
# end
# false
# end

 def got_three?(elements)
  elements.each_cons 3 do |e, f, g|  #why did I have to remove .sort after elements for the code to work eventually?
    return true if e == f && f == g  
  end
  false
  end
