
class BeerSong
  attr_accessor :bottle_num

  def initialize(bottle_num)
 bottle_num = 0 if bottle_num < 0
 bottle_num = 99 if bottle_num > 99
    self.bottle_num = bottle_num #not sure why do we need to put self.beers here.. #referencing BeerSong?
  end

 def print_song
   bottle_num.downto 1 do |i|
     print_stanza i
   end
end

def print_stanza(n)
  if n.zero?
    puts ""
  else
    puts "#{translate n} #{bottle n} of beers on the wall",
        "#{translate n} #{bottle n} of beer,",
        "Take one down, pass it around,",
        "#{translate n - 1} #{bottle n - 1} of beer on the wall."
  end
end

def bottle(n)
  return 'bottle' if n == 1
  return  'bottles' if n != 1
  end
  end

  def translate(n)
    if 0 <= n && n<=19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
   elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
  else
    "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end
