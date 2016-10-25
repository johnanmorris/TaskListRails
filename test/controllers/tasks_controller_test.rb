require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "A not-logged-in user can see no tasks" do
    session.delete(:user_id)

    # Send the request and check the response
    get :index
    assert_response :redirect
    assert_redirected_to login_path
  end

  test "A logged-in user can only see their tasks" do
    session[:user_id] = users(:chanda).id
    get :index
    assert_response :success
    assert_template :index

    tasks_from_controller = assigns(:tasks)
    assert_equal tasks_from_controller.length, users(:chanda).tasks.length

    tasks_from_controller.each do |task|
      assert_includes users(:chanda).tasks, task
    end
  end
end
