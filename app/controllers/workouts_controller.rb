class WorkoutsController < ApplicationController
  before_action :find_item, only:[:show, :edit, :update, :destroy]

  def index
    if runner_signed_in?
      @workouts = Workout.where(:runner_id => current_runner.id).order('created_at DESC')
    end
  end


  def new
    @workout = current_runner.workouts.build
  end

  def show
  end

  def create
    @workout = current_runner.workouts.build(workout_params)
    if @workout.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def complete
    @workout = Workout.find(params[:id])
    @workout.update_attribute(:completed_at, Time.now)
    redirect_to edit_workout_path
  end


  private

  def workout_params
    params.require(:workout).permit(:week, :description, :day, :miles)
  end

  def find_item
    @workout = Workout.find(params[:id])
  end

end
