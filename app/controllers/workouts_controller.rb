class WorkoutsController < ApplicationController
  before_action :find_item, only:[:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all.order('created_at DESC')
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
      redirect_to workout_path(@workout)
    else
      render 'edit'
    end
  end


  private

  def workout_params
    params.require(:workout).permit(:title, :description, :pace, :miles)
  end

  def find_item
    @workout = Workout.find(params[:id])
  end

end
