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
      membership.gym == self
    end
  end

  def lifters
    memberships.map do |lifter|
      lifter.lifter
    end
  end

  def lifter_names
    lifters.map do |lifter|
      lifter.name
    end
  end

  def lift_total
    lifters.map do |lifter|
      lifter.lift_total
    end.sum
  end

end

#initalizes with name
#can only read name

#list all gyms
  #@@all
#list all memberships by gym
#list all lifters with memberships at a gym
#list all lifter names with memberships at a gym
#combined lift total of every lifter that has a membership to gym