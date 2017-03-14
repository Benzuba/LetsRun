class WorkoutsController < ApplicationController
  before_action :find_item, only:[:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all.order('created_at DESC')
  end


  def new
    @workout = Workout.new
  end

  def show
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to root_path
    else
      render 'new'
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
