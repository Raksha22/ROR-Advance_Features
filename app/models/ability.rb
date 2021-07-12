# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new # guest user (not logged in)
    if user.admin_role.role == 'admin'
      can :read, :all
    end
    if user.admin_role.role == 'superadmin'
      can :manage, :all
    end
  end
end
