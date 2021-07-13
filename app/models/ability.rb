# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new # guest user (not logged in)
    admin_role = user.admin_role.name
    if admin_role == 'admin'
      can :read, :all
    elsif admin_role == 'superadmin'
      can :manage, :all
    else
      can :read, Post
    end
  end
end
