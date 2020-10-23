class ProjectTasksController < ApplicationController

before_action :set_project_list
before_action :set_project_task, except: [:create, :new]


	def create
		@project_task = @project_list.project_tasks.create(project_task_params)
		redirect_to @project_list
	end
	
  	def new
    	@project_task = @project_list.project_tasks.build
    end
  
  def destroy
		if @project_task.destroy
			flash[:success] = "Task was deleted."
		else
			flash[:error] = "Task could not be deleted."
		end
		redirect_to @project_list
	end

	def complete
		@project_task.update_attribute(:completed_at, Time.now)
		redirect_to @project_list, notice: "Task Done"
	end

	

 private

  def set_project_list
   @project_list = ProjectList.find(params[:project_list_id])
  end

  def set_project_task
  	@project_task = @project_list.project_tasks.find(params[:id])
  end

  def project_task_params
   	
   	params[:project_task].permit(:content, :image, :task_deadline)
  end

 end
