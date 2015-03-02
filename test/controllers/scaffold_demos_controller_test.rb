require 'test_helper'

class ScaffoldDemosControllerTest < ActionController::TestCase
  setup do
    @scaffold_demo = scaffold_demos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scaffold_demos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scaffold_demo" do
    assert_difference('ScaffoldDemo.count') do
      post :create, scaffold_demo: { comment: @scaffold_demo.comment, name: @scaffold_demo.name }
    end

    assert_redirected_to scaffold_demo_path(assigns(:scaffold_demo))
  end

  test "should show scaffold_demo" do
    get :show, id: @scaffold_demo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scaffold_demo
    assert_response :success
  end

  test "should update scaffold_demo" do
    patch :update, id: @scaffold_demo, scaffold_demo: { comment: @scaffold_demo.comment, name: @scaffold_demo.name }
    assert_redirected_to scaffold_demo_path(assigns(:scaffold_demo))
  end

  test "should destroy scaffold_demo" do
    assert_difference('ScaffoldDemo.count', -1) do
      delete :destroy, id: @scaffold_demo
    end

    assert_redirected_to scaffold_demos_path
  end
end
