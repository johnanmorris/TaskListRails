class TasksController < ApplicationController
  def index
    @example_tasks = [
      {
        "name" => "SHOPPING",
        "description" => "I need milk, butter, and cheese.",
        "completion status" => "incomplete",
        "completion date" => "NA"
      },
      {
        "name" => "HOMEWORK",
        "description" => "Read Act I of Hamlet",
        "completion status" => "in progress",
        "completion date" => "NA"
      },
      {
        "name" => "DOG CARE",
        "description" => "take dog to the vet",
        "completion status" => "complete",
        "completion date" => "September 27, 2016"
      },
    ]
  end

  def show
    example_tasks = [
      {
        "name" => "SHOPPING",
        "description" => "I need milk, butter, and cheese.",
        "completion status" => "incomplete",
        "completion date" => "NA"
      },
      {
        "name" => "HOMEWORK",
        "description" => "Read Act I of Hamlet",
        "completion status" => "in progress",
        "completion date" => "NA"
      },
      {
        "name" => "DOG CARE",
        "description" => "take dog to the vet",
        "completion status" => "complete",
        "completion date" => "September 27, 2016"
      },
    ]

    begin
      task_id = Integer(params[:id])
      if task_id >= 0 && task_id < example_tasks.length
        @task = example_tasks[task_id]
      else
        @task = "Invalid id"
        render status: 404
      end
    rescue ArgumentError
      render status: 404
      @task = "Invalid id"
    end
    puts "What is the task? #{@task}"
  end
end
