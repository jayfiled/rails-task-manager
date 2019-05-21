class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    # byebug
    @task = Task.new(task_params)
    @task.save

    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to show_path(params[:id])
  end

  def destroy
    byebug
  end

  private

  # STRONG PARAMS
  def task_params
    params.require(:task).permit(:title, :details)
  end
end
