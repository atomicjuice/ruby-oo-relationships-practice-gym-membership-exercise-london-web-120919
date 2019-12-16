# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new(name:"jay", lift_total:(rand*100).round)
l2 = Lifter.new(name:"ray", lift_total:(rand*100).round)
l3 = Lifter.new(name:"fay", lift_total:(rand*100).round)

g1 = Gym.new(name: "venice beach")
g2 = Gym.new(name: "golds gym")
g3 = Gym.new(name: "the gym, tottenham")

10.times do
  Membership.new(cost: rand(50), lifter: Lifter.all.sample, gym: Gym.all.sample)
end


binding.pry

puts "Gains!"
