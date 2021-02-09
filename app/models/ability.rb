# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # User not signin they can all document
    can :read, [Document,NewsRelease]

    # User signed in checking
    if user.present?
      # 1 = admin , 2 = หนส , 3 เจ้าหน้าที่ ปข.6
      if user.level_id == 1 || user.level_id == 2 || user.level_id == 3
        can :manage , :all
      # 4 หัวหน้าที่ทำกาารไปรษณีย , 5 = พปณ
      elsif user.level_id == 4 || user.level_id == 5
        can :read , [Document,NewsRelease]
      end
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
