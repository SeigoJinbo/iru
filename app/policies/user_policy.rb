class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def map?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    current_user
  end

  def destroy?
    true
  end
end
