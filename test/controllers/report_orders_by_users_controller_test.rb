require 'test_helper'

class ReportOrdersByUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_orders_by_user = report_orders_by_users(:one)
  end

  test "should get index" do
    get report_orders_by_users_url
    assert_response :success
  end

  test "should get new" do
    get new_report_orders_by_user_url
    assert_response :success
  end

  test "should create report_orders_by_user" do
    assert_difference('ReportOrdersByUser.count') do
      post report_orders_by_users_url, params: { report_orders_by_user: { date_end: @report_orders_by_user.date_end, date_start: @report_orders_by_user.date_start, file_path: @report_orders_by_user.file_path } }
    end

    assert_redirected_to report_orders_by_user_url(ReportOrdersByUser.last)
  end

  test "should show report_orders_by_user" do
    get report_orders_by_user_url(@report_orders_by_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_orders_by_user_url(@report_orders_by_user)
    assert_response :success
  end

  test "should update report_orders_by_user" do
    patch report_orders_by_user_url(@report_orders_by_user), params: { report_orders_by_user: { date_end: @report_orders_by_user.date_end, date_start: @report_orders_by_user.date_start, file_path: @report_orders_by_user.file_path } }
    assert_redirected_to report_orders_by_user_url(@report_orders_by_user)
  end

  test "should destroy report_orders_by_user" do
    assert_difference('ReportOrdersByUser.count', -1) do
      delete report_orders_by_user_url(@report_orders_by_user)
    end

    assert_redirected_to report_orders_by_users_url
  end
end
