class Membership
  attr_reader :cost, :lifter, :gym

  def initialize(cost:, lifter:, gym:)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

end
 