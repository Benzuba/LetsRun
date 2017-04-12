class RemoveTitleFromWorkouts < ActiveRecord::Migration[5.0]
  def change
    remove_column :workouts, :title, :string
  end
end
