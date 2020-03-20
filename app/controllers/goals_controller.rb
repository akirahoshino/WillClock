class GoalsController < ApplicationController
  def index
  end

  def new
    @goal = Goal.new
  end
  
  def create
    @goal = current_user.goals.new(goal_params(params))
    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end
  def goal_params(params)
    params.require(:goal).permit(:title, :due_time)
  end
end
