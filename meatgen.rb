#!/usr/bin/env ruby
def meatgen(count)
  if count.is_number?
    count.to_i.times do
      first = File.readlines("textfiles/first.txt").shuffle.pop.strip
      last = File.readlines("textfiles/last.txt").shuffle.pop.strip
      puts "#{first} #{last}"
    end
  else
    puts "Enter a valid number."
  end
end

class String
  def is_number?
    true if Float(self) rescue false
  end
end

meatgen(ARGV[0])