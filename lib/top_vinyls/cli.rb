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
      TopVinyls::Scraper.new.make_list(1)
      TopVinyls::Scraper.new.make_list(2)
      TopVinyls::Scraper.new.make_list(3)
      TopVinyls::Scraper.new.make_list(4)
      print_list(input)
    end
  end

  def print_list(input)
    puts ""
    puts "---------- Current List ----------"
    puts ""
    if input == 1
      TopVinyls::Vinyls.all[0..24].each do |vinyls|
        puts "#{vinyls.position}. #{vinyls.name}"
        puts ""
      end
    elsif input == 2
      TopVinyls::Vinyls.all[25..49].each do |vinyls|
        puts "#{vinyls.position}. #{vinyls.name}"
        puts ""
      end
    elsif input == 3
      TopVinyls::Vinyls.all[50..74].each do |vinyls|
        puts "#{vinyls.position}. #{vinyls.name}"
        puts ""
      end
    elsif input == 4
      TopVinyls::Vinyls.all[75..99].each do |vinyls|
        puts "#{vinyls.position}. #{vinyls.name}"
        puts ""
      end
    end
    which_album(input)
  end

  def which_album(input)
    range = ()
      
    puts ""
    puts "Which album would you like more information about?"
    puts "Enter Album number : "

    if input == 1
      range = (0..24)
    elsif input == 2
      range = (25..49)
    elsif input == 3
      range = (50..74)
    elsif input == 4
      range = (75..99)
    end

      num = gets.chomp.to_i

    if !range.include?(num)
      puts "Please try again"
      which_album(input)
    else
      puts "ok"
      #Need to create Find method within vinyls.rb
      #Create method within scraper.rb to scrape info per individual album
      #HAVE -artist -year -position
      #NEED -blurb -vinylsize -tracklisting
    end
  end
    
end