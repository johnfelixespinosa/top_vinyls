class TopVinyls::CLI
  require 'pry'

  def start
    puts ""
    puts "---------- Top 100 Must Own Vinyl Records ----------"
    puts ""
    puts "Which albums would you like to see?"
    puts "
          1. [01-25]
          2. [26-50] 
          3. [51-75]
          4. [76-100]"
    puts ""
    puts "Choose 1-4"
    puts ""

      input = gets.chomp.to_i

    if !((1..4) === input)
      puts "Please try again"
      start
    else
      TopVinyls::Scraper.new.make_list(input)
      print
      #binding.pry
    end
  end

  def print
    puts ""
    puts "---------- Current List ----------"
    puts ""
    TopVinyls::Vinyls.all.each do |vinyls|
      puts "#{vinyls.position}. #{vinyls.name}"
      puts ""
    end
    binding.pry
  end

end