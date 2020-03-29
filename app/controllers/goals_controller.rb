# frozen_string_literal: true

class GoalsController < ApplicationController
  def index
    @goal = Goal.all
  end

  def new
    @goal = Goal.new
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def create
    @goal = current_user.goals.new(goal_params(params))
    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end

  def update
    @goal = current_user.goals.find(params[:id])
    @goal.assign_attributes(goal_params(params))
    if @goal.save
      redirect_to goals_path
    else
      render :edit
    end
  end

  def destroy
    current_user.goals.find(params[:id]).destroy
    redirect_to goals_path
  end

  private

  def goal_params(params)
    params.require(:goal).permit(:title, :due_time, :info)
  end
end
