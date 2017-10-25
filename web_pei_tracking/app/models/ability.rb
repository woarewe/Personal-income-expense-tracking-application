class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, User, id: user.id
    can :manage, Category, user_id: user.id
    can :manage, Capital, user_id: user.id
  end
end
