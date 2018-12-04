require 'test_helper'

class QuotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quotation = quotations(:one)
  end

  test "should get index" do
    get quotations_url, as: :json
    assert_response :success
  end

  test "should create quotation" do
    assert_difference('Quotation.count') do
      post quotations_url, params: { quotation: { quote: @quotation.quote, user_id: @quotation.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show quotation" do
    get quotation_url(@quotation), as: :json
    assert_response :success
  end

  test "should update quotation" do
    patch quotation_url(@quotation), params: { quotation: { quote: @quotation.quote, user_id: @quotation.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy quotation" do
    assert_difference('Quotation.count', -1) do
      delete quotation_url(@quotation), as: :json
    end

    assert_response 204
  end
end
