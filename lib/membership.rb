require 'pry'
class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(gym, lifter, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost
    Membership.all << self
  end

  def self.all
    @@all
  end
end


#initializes with cost
#can only read cost

#list of all memberships