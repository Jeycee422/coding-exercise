require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:customer_portal)
  end

  test "index lists projects" do
    get projects_url

    assert_response :success
    assert_select "h1", "Projects"
    assert_select ".project-list-item", count: Project.count
    assert_select "a", text: @project.name
  end

  test "root shows the projects index" do
    get root_url

    assert_response :success
    assert_select "h1", "Projects"
  end

  test "show displays a project" do
    get project_url(@project)

    assert_response :success
    assert_select "h1", @project.name
  end

  test "new renders the form" do
    get new_project_url

    assert_response :success
    assert_select "form"
  end

  test "create saves a valid project and redirects" do
    assert_difference("Project.count", 1) do
      post projects_url, params: { project: { name: "Billing", description: "Invoices" } }
    end

    assert_redirected_to project_url(Project.find_by!(name: "Billing"))
    follow_redirect!
    assert_select ".flash", /successfully created/
  end

  test "create with a blank name shows validation errors" do
    assert_no_difference("Project.count") do
      post projects_url, params: { project: { name: "", description: "No name" } }
    end

    assert_response :unprocessable_entity
    assert_select ".errors li", "Name can't be blank"
  end

  test "edit renders the form" do
    get edit_project_url(@project)

    assert_response :success
  end

  test "update changes a project" do
    patch project_url(@project), params: { project: { name: "Renamed" } }

    assert_redirected_to project_url(@project)
    assert_equal "Renamed", @project.reload.name
  end

  test "update with a blank name shows validation errors" do
    patch project_url(@project), params: { project: { name: "" } }

    assert_response :unprocessable_entity
    assert_select ".errors li", "Name can't be blank"
  end

  test "destroy deletes a project" do
    assert_difference("Project.count", -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
