class TasksController < ApplicationController
  # before_action :set_task, only: [:edit, :update, :destroy]
  # before_action :authenticate_user!

  def index
    @task = current_user.tasks.where(goal_id: params[:goal_id])
    @goal = Goal.find(params[:goal_id])
    @new_task = Task.new(user_id: current_user.id, goal_id: params[:goal_id])
  end

  def new
    @task = Task.new(user_id: current_user.id, goal_id: params[:goal_id])
    # @task = current_user.tasks.new(user_id: current_user.id, goal_id: params[:goal_id], info: params[:info])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = current_user.tasks.new(user_id: current_user.id, goal_id: params[:goal_id])
    @task.assign_attributes(task_params(params))
    if @task.save
      redirect_to goal_tasks_path(@task.goal_id)
    else
      render :new
    end
  end

  def update
    @task = current_user.tasks.find(params[:id])
    @task.assign_attributes(task_params(params))
    if @task.save
      redirect_to goal_tasks_path(@task.goal_id)
    else
      render :edit
    end
  end

  def destroy
    @task = current_user.tasks.find(params[:id]).goal_id
    current_user.tasks.find(params[:id]).destroy
    redirect_to goal_tasks_path(@task)
  end
  
  private
  
  # def set_user
  #   #@user = User.find(params[:id])
  #   @goal = Goal.where(:id => params[:goal_id]).first
  #   @task = @goal.tasks.where(:id => params[:id]).first
  # end
  
  def task_params(params)
    params.require(:task).permit(:user_id, :goal_id, :info)
  end
end
