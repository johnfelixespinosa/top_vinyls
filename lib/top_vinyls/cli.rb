class TopVinyls::CLI
  require 'pry'

def start
  puts ""
  puts "---------- Top 100 Must Own Vinyl Records ----------"
  puts ""
  puts "The Albums are"
  #puts "
  #      1. [01-20] 
  #     2. [21-40] 
  #     3. [41-60]
  #     4. [61-80]
  #      5. [81-100]"
  puts ""
  #puts "Choose 1-5"
  #input = gets.strip
  TopVinyls::Scraper.new.make_list
  TopVinyls::Vinyls.print
  binding.pry

end

end