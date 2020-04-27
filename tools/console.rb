# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#membership arguments (gym, lifter, cost)
l1 = Lifter.new("Jack", 250)
l2 = Lifter.new("Jill", 200)
l3 = Lifter.new("Bob", 180)
g1 = Gym.new("24Fitness")
g2 = Gym.new("Planet Fitness")
m1 = Membership.new(l1, g1, 100)
m2 = Membership.new(l2, g2, 250) 
m3 = Membership.new(l3, g2, 250)
m4 = Membership.new(l2, g1, 100)
m5 = Membership.new(l3, g1, 50) 
binding.pry

puts "Gains!"
