require "pry"
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness

    if @happiness >= 10
      @happiness = 10
    elsif @happiness <= 0
      @happiness = 0
    end

    @happiness

  end

  def hygiene=(hygiene)
    @hygiene = hygiene

    if @hygiene >= 10
      @hygiene = 10
    elsif @hygiene <= 0
      @hygiene = 0
    end

    @hygiene
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid (salary)
    @bank_account += salary
    return "all about the benjamins"
  end


  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -=3

    return "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    self.happiness += 3
    friend.happiness += 3

    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (friend, topic)
    case topic
    when "politics"
      self.happiness -= 2

      friend.happiness -= 2

      return "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1

      friend.happiness += 1

      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

  # The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively

#  get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean
end
