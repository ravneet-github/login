class AddImageToProjectTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :project_tasks, :image, :string
  end
end
