require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    #INIT
    @task = tasks(:one)
    @project = projects(:one)
    @user = users(:one)

    @task.project = @project
    @task.user = @user
    @task.save

    @tasks = Task.all.build(:project => @project, :user => @user)
  end

  test "should get index" do
    @tasks = Task.all.build(:project => @project, :user => @user)
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference("Task.count") do
      post tasks_url, params: { task: { completed: @task.completed, description: @task.description, title: @task.title, user_id: @task.user_id, project_id: @task.project.id } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { completed: @task.completed, description: @task.description, title: @task.title, user_id: @task.user_id } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference("Task.count", -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
