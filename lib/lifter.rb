require 'pry'
class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |gym|
      gym.gym
    end
  end

  def avg_lift_total
    Lifter.all.map do |lift|
      lift.lift_total
    end.sum/Lifter.all.count
  end

  def total_cost
    memberships.map do |membership|
      membership.cost
    end.sum
  end

  def sign_up(gym, cost)
    binding.pry
    Membership.new(self, gym, cost)
  end

end


#initalizes with name and lift_total
#can only read name and lift_total

#lists all lifters
  #@@all
#list all memberships by lifter
#list all gyms a lifter has memberships to
#average lift total of lifter
#total cost of lifters gym memberships
#sign up for a gym