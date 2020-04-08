class TasksController < ApplicationController
  def index
    @task = Task.all
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
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update
    @task = current_user.tasks.find(params[:id])
    @task.assign_attributes(task_params(params))
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def destroy
    current_user.tasks.find(params[:id]).destroy
    redirect_to tasks_path
  end
  
  private
  
  def task_params(params)
    params.require(:task).permit(:info)
  end
end
