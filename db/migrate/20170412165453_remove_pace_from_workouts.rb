class RemovePaceFromWorkouts < ActiveRecord::Migration[5.0]
  def change
    remove_column :workouts, :pace, :integer
  end
end
