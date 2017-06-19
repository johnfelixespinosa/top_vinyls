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
      print_list
    end
  end

  def print_list
    puts ""
    puts "---------- Current List ----------"
    puts ""
    TopVinyls::Vinyls.all.each do |vinyls|
      puts "#{vinyls.position}. #{vinyls.name}"
      puts ""
    end
    which_album
  end

  def which_album
    puts ""
    puts "Which album would you like more information about?"
    puts "Enter Album number : "
  end



end