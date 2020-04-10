class TasksController < ApplicationController
  # before_action :set_task, only: [:edit, :update, :destroy]
  # before_action :authenticate_user!

  def index
    @task = current_user.tasks.where(goal_id: params[:goal_id])
    @goal = Goal.find(params[:goal_id])
  end

  def new
    @task = current_user.tasks.new(user_id: current_user.id, goal_id: params[:goal_id])
      if @task
      end
    # @task = Task.new(goal_id: params[:goal_id], user_id: current_user.id)
  end

  def edit
    # @task = Task.find(params[:id])
    # @task = Task.find(params[:id])
    # @task = current_user.tasks.where(goal_id: @goal.id)
    # @goal = Goal.find(params[:goal_id])
    # @task = current_user.tasks.where(goal_id: params[:goal_id], id: params[:id])
    # @goal = Goal.find(params[:id])
  end

  def create
    @task = current_user.tasks.new(task_params(params))
    if @task.save
      puts @task.save
      redirect_to goal_tasks_path(params[:id])
    # else
    #   render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.assign_attributes(task_params(params))
    if @task.save
      render :new
      # redirect_to goal_tasks_path
    else
      render :new
    end
  end

  def destroy
    current_user.tasks.where(goal_id: params[:goal_id]).destroy
    # redirect_to goal_tasks_path
  end
  
  private
  
  def set_user
    #@user = User.find(params[:id])
    @goal = Goal.where(:id => params[:goal_id]).first
    @task = @goal.tasks.where(:id => params[:id]).first
  end
  
  def task_params(params)
    params.require(:task).permit(:user_id, :goal_id, :info)
    # params.require(:task)
  end
end
