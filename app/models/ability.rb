class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == User::ROLE[:admin]
      can :manage, :all
    elsif user.role == User::ROLE[:user]
      can [:read, :create], Idea
      can [:update, :destroy], Idea do |idea|
        idea.user == user
      end

      can [:read, :create], Comment
      can [:update, :destroy], Comment do |comment|
        comment.user == user
      end
    end
  end
end
