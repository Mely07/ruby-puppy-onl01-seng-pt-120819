
class Dog 
  attr_accessor:name
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    save #method @@all << self -- here self refers to new instance we are storing in @@all class variable 
  end
  
  def self.all #class method serving as "reader" for @@all class variable. An attribute reader allows us to access variables in a class from outside that class. 
    @@all
  end

  def self.print_all #class method 
    @@all.each do |puppy|
      puts puppy.name
    end
  end
  
  def save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear 
  end

end
