class ProjectList < ApplicationRecord
	belongs_to :user
	has_many :project_tasks, dependent: :destroy
end
