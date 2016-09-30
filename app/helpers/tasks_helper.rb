module TasksHelper
  def formatted_time(task)
    if task.completed_at != nil
      return task.completed_at.strftime("%B %e, %Y, %I:%M:%S %p")
    else
      return "not yet completed"
    end
  end


end
