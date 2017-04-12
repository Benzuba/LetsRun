class AddWeekToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :week, :integer
  end
end
