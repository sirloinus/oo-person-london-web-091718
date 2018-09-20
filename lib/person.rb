class Person

attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    # hygiene=(self.hygiene)
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    # hygiene=(self.hygiene)
    self.happiness += 2
    # happiness=(self.happiness)
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    # happiness=(self.happiness)
    # happiness=(friend.happiness)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      # happiness=(self.happiness)
      # happiness=(friend.happiness)
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      # happiness=(self.happiness)
      # happiness=(friend.happiness)
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

end
