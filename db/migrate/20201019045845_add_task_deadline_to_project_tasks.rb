class AddTaskDeadlineToProjectTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :project_tasks, :task_deadline, :date
  end
end
