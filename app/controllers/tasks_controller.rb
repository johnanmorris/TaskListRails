class TasksController < ApplicationController
  def index
    @example_tasks = [
      {
        name: "SHOPPING",
        description: "I need milk, butter, and cheese.",
        completion_status: "incomplete",
        completion_date: "NA"
      },
      {
        name: "HOMEWORK",
        description: "Read Act I of Hamlet",
        completion_status: "in progress",
        completion_date: "NA"
      },
      {
        name: "DOG CARE",
        description: "take dog to the vet",
        completion_status: "complete",
        completion_date: "September 27, 2016"
      },
    ]
  end

  # def show
  # end
end
