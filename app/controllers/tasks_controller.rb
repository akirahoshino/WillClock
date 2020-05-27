class TasksController < ApplicationController
  before_action :set_goal
  before_action :set_task, only: [:edit, :update, :destroy]
  # before_action :authenticate_user!

  def index
    @tasks = @goal.tasks.all
    @new_task = @goal.tasks.new(user_id: current_user.id)
  end

  def new
    @task = Task.new(user_id: current_user.id, goal_id: params[:goal_id])
    # @task = current_user.tasks.new(user_id: current_user.id, goal_id: params[:goal_id], info: params[:info])
  end

  def edit
  end

  def create
    @task = current_user.tasks.new(user_id: current_user.id, goal_id: params[:goal_id])
    @task.assign_attributes(task_params)
    if @task.save
      redirect_to goal_tasks_path(@task.goal_id)
    else
      render :new
    end
  end

  def update
    @task.assign_attributes(task_params)
    if @task.save
      redirect_to goal_tasks_path(@task.goal_id)
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to goal_tasks_path(@goal)
  end
  
  private
  
  def set_goal
    @goal = current_user.goals.find(params[:goal_id])
  end
  
  def set_task
    @task = @goal.tasks.find_by(id: params[:id])
  end
  
  def task_params
    params.require(:task).permit(:user_id, :goal_id, :info)
  end
end
