module WorkoutsHelper
  def render_workout(week, day)
    workout=@workouts.find_by(week: week, day: day)
    return workout_details(workout) if workout
  end
end

def workout_details(workout)
   "#{workout.description} #{workout.miles}" + "miles"
end

#
#
#
#
#   def render_workout(week, day)
#     @workouts.each do |workout|
#       if workout.week == week && workout.day == day
#         return workout.description
#       end
#     end
#   end
# end
