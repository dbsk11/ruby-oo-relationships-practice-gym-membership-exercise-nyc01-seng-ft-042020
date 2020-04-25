# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#membership arguments (gym, lifter, cost)
lifter1 = Lifter.new("Jack", 100)
lifter2 = Lifter.new("Sean", 200)
lifter3 = Lifter.new("Judy", 200)
gym1 = Gym.new("24Fitness")
gym2 = Gym.new("Planet Fitness")
membership1 = Membership.new(gym1, lifter1, 100)
membership2 = Membership.new(gym2, lifter2, 200)
membership3 = Membership.new(gym2, lifter3, 200)
membership4 = Membership.new(gym1, lifter2, 100)

binding.pry

puts "Gains!"
