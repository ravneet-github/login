class AddCompletedAtToProjectTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :project_tasks, :completed_at, :datetime
  end
end
