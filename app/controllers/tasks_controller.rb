class TasksController < ApplicationController
  before_action :set_task, only: [:destroy, :update, :edit, :show]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(user_params)
    @task.save

    redirect_to tasks_path
  end

  def show
  end

  def edit
  end

  def update
    @task.update(user_params)

    redirect_to tasks_path
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def user_params
    params.require(:task).permit(:name, :details)
  end
end
