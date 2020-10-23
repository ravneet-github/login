class ProjectTask < ApplicationRecord
  mount_uploader :image, FileUploader
  belongs_to :project_list 

  

  def completed?
  	!completed_at.blank?
  end
end
