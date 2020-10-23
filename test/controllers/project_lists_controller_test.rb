require 'test_helper'

class ProjectListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_list = project_lists(:one)
  end

  test "should get index" do
    get project_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_project_list_url
    assert_response :success
  end

  test "should create project_list" do
    assert_difference('ProjectList.count') do
      post project_lists_url, params: { project_list: { description: @project_list.description, title: @project_list.title } }
    end

    assert_redirected_to project_list_url(ProjectList.last)
  end

  test "should show project_list" do
    get project_list_url(@project_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_list_url(@project_list)
    assert_response :success
  end

  test "should update project_list" do
    patch project_list_url(@project_list), params: { project_list: { description: @project_list.description, title: @project_list.title } }
    assert_redirected_to project_list_url(@project_list)
  end

  test "should destroy project_list" do
    assert_difference('ProjectList.count', -1) do
      delete project_list_url(@project_list)
    end

    assert_redirected_to project_lists_url
  end
end
