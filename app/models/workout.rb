class Workout < ApplicationRecord
  belongs_to :runner

  def completed?
    !completed_at.blank?
  end
end
