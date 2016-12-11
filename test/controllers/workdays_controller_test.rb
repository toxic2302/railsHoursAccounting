require 'test_helper'

class WorkdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workday = workdays(:one)
  end

  test "should get index" do
    get workdays_url
    assert_response :success
  end

  test "should get new" do
    get new_workday_url
    assert_response :success
  end

  test "should create workday" do
    assert_difference('Workday.count') do
      post workdays_url, params: { workday: { day: @workday.day, end: @workday.end, start: @workday.start } }
    end

    assert_redirected_to workday_url(Workday.last)
  end

  test "should show workday" do
    get workday_url(@workday)
    assert_response :success
  end

  test "should get edit" do
    get edit_workday_url(@workday)
    assert_response :success
  end

  test "should update workday" do
    patch workday_url(@workday), params: { workday: { day: @workday.day, end: @workday.end, start: @workday.start } }
    assert_redirected_to workday_url(@workday)
  end

  test "should destroy workday" do
    assert_difference('Workday.count', -1) do
      delete workday_url(@workday)
    end

    assert_redirected_to workdays_url
  end
end
