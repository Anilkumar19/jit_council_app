class Ability
  include CanCan::Ability

    def initialize(user)
      # Define abilities for the passed in user here. For example:
      #
      #   user ||= User.new # guest user (not logged in)


      case user.role
        when "admin"
            can :manage, [Student, AdminUser]
            can [:read, :create, :update, :destroy], AdminUser
            can :manage, ActiveAdmin::Page, :name => "Dashboard"
            #cannot :create, []
            #cannot :read, []  
            cannot [:destroy], AdminUser, :role => "admin"
        end
    end
end
