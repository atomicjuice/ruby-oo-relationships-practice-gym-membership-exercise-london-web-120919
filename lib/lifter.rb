class Lifter
  attr_reader :name, :lift_total

  def initialize(name:, lift_total:)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|memberships|memberships.lifter == self}
  end

  def lifter_gyms
    lifter_memberships.collect{|memberships| memberships.gym}
  end

  def self.all_lifters_total
    lifters_total = all.collect{|lifters| lifters.lift_total}.reduce(:+)
    lifters = all.count
    lifters_total / lifters
  end

  def gym_memberships_cost
    memberships.collect{|memberships| memberships.cost}.reduce(:+)
  end

  def sign_by_gym_and_membership_cost(gym = Gym.all.sample, cost = rand(50))
    Membership.new(cost: cost, lifter: self, gym: gym)
  end

end 