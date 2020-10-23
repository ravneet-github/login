class AddUserIdToProjectLists < ActiveRecord::Migration[5.1]
  def change
    add_column :project_lists, :user_id, :integer
  end
end
