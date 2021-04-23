class MegaGreeter
  attr_accessor :names

  # create the object
  def initialize(names = 'Lee')
    @names = names
  end

  # say hi to everyone
  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # say by to everyone
  def say_bye
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('join')
      # JOin the list elements with commas
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to Meagan
  mg.names = "Meagan"
  mg.say_hi
  mg.say_bye

  # change to  an array of names
  mg.names = ["Bill", "Sooki", "Eric", "Pam"]

  mg.say_hi
  mg.say_hi

  # change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end
