class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # the set_task method is run in the before_action.
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params) # can't be like this. # Will raise ActiveModel::ForbiddenAttributesError
    @task.save
    redirect_to task_path(@task) # Just redirect. No need for app/views/tasks/create.html.erb
  end

  def edit
    # the set_task method is run in the before_action.
  end

  def update
    # the set_task method is run in the before_action.
    @task.update(task_params)
    redirect_to task_path(@task) # Just redirect. No need for app/views/tasks/update.html.erb
  end

  def destroy
    # the set_task method is run in the before_action.
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  # to avoid ForbiddenAttributesError
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
