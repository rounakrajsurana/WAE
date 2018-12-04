class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.is_admin?
      can :manage, :all
    elsif user.is_member?
      can :read, Quotation
      can :create, Quotation
      can [:update, :destroy], Quotation do |q|
        q.user == user
      end
    else
      can :read, Quotation
    end
  end
end
