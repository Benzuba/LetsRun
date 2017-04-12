class RemoveDescriptionFromWorkouts < ActiveRecord::Migration[5.0]
  def change
    remove_column :workouts, :description, :text
  end
end
