require 'test_helper'

class Admin::FoundationsControllerTest < ActionController::TestCase
  setup do
    @admin_foundation = admin_foundations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_foundations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_foundation" do
    assert_difference('Admin::Foundation.count') do
      post :create, admin_foundation: { description: @admin_foundation.description, mail: @admin_foundation.mail, mission: @admin_foundation.mission, name: @admin_foundation.name, phone: @admin_foundation.phone, view: @admin_foundation.view }
    end

    assert_redirected_to admin_foundation_path(assigns(:admin_foundation))
  end

  test "should show admin_foundation" do
    get :show, id: @admin_foundation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_foundation
    assert_response :success
  end

  test "should update admin_foundation" do
    patch :update, id: @admin_foundation, admin_foundation: { description: @admin_foundation.description, mail: @admin_foundation.mail, mission: @admin_foundation.mission, name: @admin_foundation.name, phone: @admin_foundation.phone, view: @admin_foundation.view }
    assert_redirected_to admin_foundation_path(assigns(:admin_foundation))
  end

  test "should destroy admin_foundation" do
    assert_difference('Admin::Foundation.count', -1) do
      delete :destroy, id: @admin_foundation
    end

    assert_redirected_to admin_foundations_path
  end
end
