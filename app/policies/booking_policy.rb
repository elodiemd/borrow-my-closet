class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def accept?
    true
    # record.user == current.user
  end

  def reject?
    true
    # record.user == current.user
  end
end
