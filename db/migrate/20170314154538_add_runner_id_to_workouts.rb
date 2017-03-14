class AddRunnerIdToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :runner_id, :integer
  end
end
