class AddDescriptionToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :description, :string
  end
end
