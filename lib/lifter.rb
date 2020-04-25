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
    Membership.all.select do |member|
      member.lifter == self
    end
  end

  def gyms
    memberships.map do |member|
      member.gym
    end
  end

  def average_lift_total
    @@all.map do |total|
      total.lift_total
    end.sum/@@all.count
  end

  def total_cost
    total = memberships.map do |member|
      member.cost
    end
    total.sum
  end

  def new_membership(gym, cost)
    Mmebership.new(gym, self, cost)
  end

end


#initalizes with name and lift_total
#can only read name and lift_total

#deliver list of lifters 
#list of all memberships by lifter
#list all gyms memberships by lifter
#average lift total of all lifters
#total cost of specific gym memberships
#given cost and gym, sign up for a new gym