class AddDayToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :day, :string
  end
end
