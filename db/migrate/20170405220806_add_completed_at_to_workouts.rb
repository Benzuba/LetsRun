class AddCompletedAtToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :completed_at, :datetime
  end
end
