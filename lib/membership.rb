require 'pry'
class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(lifter, gym, cost)
    @cost = cost
    @lifter = lifter
    @gym = gym
    Membership.all << self
  end

  def self.all
    @@all
  end

end


#initializes with cost
#can only read cost

#lists all memberships
  #@@all