module WorkoutsHelper
  def render_workout(week, day)
    workout=@workouts.find_by(week: week, day: day)
    return link_to workout_details(workout), edit_workout_path(workout), class:"workout" if workout
  end
end

def workout_details(workout)
    if workout.completed?
    "#{workout.description}"  "#{workout.miles}" " " "miles" "\n" "FINISHED"
    else
    "#{workout.description} "  " #{workout.miles} miles"
    end
end
