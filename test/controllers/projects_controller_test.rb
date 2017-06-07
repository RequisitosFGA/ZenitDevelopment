require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { expected_conclusion_date: @project.expected_conclusion_date, first_contact: @project.first_contact, project_conclusion_date: @project.project_conclusion_date, project_name: @project.project_name, project_value: @project.project_value, signature_date: @project.signature_date } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { expected_conclusion_date: @project.expected_conclusion_date, first_contact: @project.first_contact, project_conclusion_date: @project.project_conclusion_date, project_name: @project.project_name, project_value: @project.project_value, signature_date: @project.signature_date } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
