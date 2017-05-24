require 'restaurant'

class Guide

  def initialize(path=nil)
    #locate the restaurant text file at path
    Restaurant.filepath = path # tells the program where the restaurant file should be.
    if Restaurant.file_usable?
      puts "Found restaurant file."
    #or create new file
    elsif Restaurant.create_file
      puts "Created restaurant file."
    #exit if create fails
    else
    puts "Exiting. \n\n"
    exit!
    end
  end

  def launch!
  introduction
  #action loop
    #What do yuo want to do? (list, find, add, quit)
    #do that action
  #repeat until user quits
  conclusion
  end

  def introduction
  puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
  puts "This is an interactive guide to help you find the food you crave.\n\n"
  end


  def conclusion
  puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
  end

end
