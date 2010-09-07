require 'test_helper'

class Admin::EventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Admin::Event.count') do
      post :create, :event => { }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, :id => admin_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => admin_events(:one).to_param
    assert_response :success
  end

  test "should update event" do
    put :update, :id => admin_events(:one).to_param, :event => { }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Admin::Event.count', -1) do
      delete :destroy, :id => admin_events(:one).to_param
    end

    assert_redirected_to admin_events_path
  end
end