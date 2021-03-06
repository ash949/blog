class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      
      if user.admin?
        can :manage, :all
      else
        can :create, Comment, user_id: user.id
        can :update, User, id: user.id
        can :edit, User, id: user.id
        can :show, User, id: user.id
        can :show, Post
      end
  end
end
