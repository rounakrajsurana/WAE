require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get requests_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    sign_in users(:one)
    assert_difference('Request.count') do
      post requests_url, params: { request: { complain: "problem", location: "secbad", open: "true", nature: "done" } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    sign_in users(:one)
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    sign_in users(:two)
    patch request_url(@request), params: { request: { cancelled: "true", closed: "true", complain: "complain", location: "hyd", open: "false" } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    sign_in users(:one)
    assert_difference('Request.count', -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
