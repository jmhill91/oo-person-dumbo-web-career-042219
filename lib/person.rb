require 'pry'
class Person
  attr_reader :name
  attr_writer
  attr_accessor

  def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
  end

  def bank_account
    @bank_account
  end

  def bank_account=(amount)
    @bank_account+=amount
  end

  def happiness
    @happiness
  end

  def happiness=(points)
    if points>=0 && points<=10
     @happiness=points
   elsif points>10
      @happiness =10
    elsif points<0
      @happiness=0
    end
   end

   def hygiene
     @hygiene
   end

  def hygiene=(points)
    if points>=0 && points<=10
     @hygiene=points
   elsif points>10
      @hygiene =10
    elsif points<0
      @hygiene=0
    end
  end

  def clean?
    if @hygiene>7
      return true
    else false
    end
  end

  def happy?
    if @happiness >7
      return true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account+= salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene-=3
    self.happiness+=2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness+=3
    person.happiness+=3
     "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def  start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return 'blah blah sun blah rain'
    elsif topic != "politics" && topic != "weather"
      return 'blah blah blah blah blah'
    end
  end
end
