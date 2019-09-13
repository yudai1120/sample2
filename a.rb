class People
  def initialize
   p "Peopleのインスタンスが作られました"
  end
  def self.human
    p "私はPeopleクラスです"
  end
  def name=(value)
    @name = value
  end
  def name
    @name
  end
  attr_accessor :name
end
people = People.new
People.human
people.name ="私は目からビームが出せます"
p people.name

class Childpeople < People
end
Childpeople.namerail