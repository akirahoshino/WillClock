class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @task = current_user.tasks.where(goal_id: params[:goal_id])
    @goal = current_user.goals.where(id: params[:goal_id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = current_user.tasks.new(task_params(params))
    if @task.save
      redirect_to goal_tasks_path
    else
      render :new
    end
  end

  def update
    @task = current_user.tasks.find(params[:id])
    @task.assign_attributes(task_params(params))
    if @task.save
      redirect_to goal_tasks_path
    else
      render :new
    end
  end

  def destroy
    current_user.tasks.find(params[:id]).destroy
    redirect_to goal_tasks_path
  end
  
  private
  
  def task_params(params)
    params.require(:task).permit(:info)
  end
end
