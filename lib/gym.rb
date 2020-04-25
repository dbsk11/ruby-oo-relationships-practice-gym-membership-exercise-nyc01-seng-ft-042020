require 'pry'
class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym
    end
  end

  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end

  def name_of_lifter
    lifters.map do |lifter|
      lifter.name
    end
  end

  def lift_total
    lifters.map do |lift|
      lift.lift_total 
    end.sum
  end
end

#initalizes with name
#can only read name

#list all gyms
#list of all memberships by gym
#list of all lifters that have memberships by gym
#list of all liters that have membership to gym
#combined lift total of every lifter by membership to a gym