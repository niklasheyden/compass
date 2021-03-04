class WeekPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user
  end

  def create?
    user
  end

  def show?
    record.user == user
  end

end
