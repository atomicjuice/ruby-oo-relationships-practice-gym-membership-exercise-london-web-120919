class Gym
  attr_reader :name

  def initialize(name:)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def gym_memberships
    Membership.all.select{|memberships| memberships.gym == self}
  end

  def lifters_at_gym
    gym_memberships.collect{|memberships| memberships.lifter}
  end

  def lifters_names
    lifters_at_gym.collect{|lifter| lifter.name}
  end

  def combined_lift_total_of_lifter
    lifters_at_gym.collect{|lifter| lifter.lift_total}.reduce(:+)
  end

  

end 
