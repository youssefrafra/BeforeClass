class UserGamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user
  end

  def complete?
    # raise
    record.user == user
  end
end
