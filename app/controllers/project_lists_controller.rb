class ProjectListsController < ApplicationController
  
  before_action :set_project_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /project_lists
  # GET /project_lists.json
  def index
    @project_lists = ProjectList.all
  end

  # GET /project_lists/1
  # GET /project_lists/1.json
  def show
  end

  # GET /project_lists/new
  def new
    @project_list = current_user.project_lists.build
    # ProjectList.new
  end

  # GET /project_lists/1/edit
  def edit
  end

  # POST /project_lists
  # POST /project_lists.json
  def create
    @project_list = current_user.project_lists.build(project_list_params)

    respond_to do |format|
      if @project_list.save
        format.html { redirect_to @project_list, notice: 'Project list was successfully created.' }
        format.json { render :show, status: :created, location: @project_list }
      else
        format.html { render :new }
        format.json { render json: @project_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_lists/1
  # PATCH/PUT /project_lists/1.json
  def update
    respond_to do |format|
      if @project_list.update(project_list_params)
        format.html { redirect_to @project_list, notice: 'Project list was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_list }
      else
        format.html { render :edit }
        format.json { render json: @project_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_lists/1
  # DELETE /project_lists/1.json
  def destroy
    @project_list.destroy
    respond_to do |format|
      format.html { redirect_to project_lists_url, notice: 'Project list was successfully destroyed.' }
      format.json { head :no_content }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_list
      @project_list = ProjectList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_list_params
      params.require(:project_list).permit(:title, :description)
    end
end
