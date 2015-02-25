class PostPolicy < ApplicationPolicy
  def manage?
    return false if user.nil?
    user.admin?
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(published: true)
      end
    end
  end
end
