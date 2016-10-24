class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy, :complete]
  def index
    @tasks = @current_user.tasks
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = session[:user_id]
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def edit; end

  def update
    @task.assign_attributes(task_params)

    if @task.save
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def complete
    @task.completed_at = Time.now.utc
    @task.save
    redirect_to tasks_path
  end

  # ---- PRIVATE METHODS ----

  private

  def task_params
    params.require(:task).permit(:title, :description, :completed_at)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
