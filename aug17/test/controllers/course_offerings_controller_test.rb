require 'test_helper'

class CourseOfferingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_offering = course_offerings(:one)
  end

  test "should get index" do
    get course_offerings_url
    assert_response :success
  end

  test "should get new" do
    get new_course_offering_url
    assert_response :success
  end

  test "should create course_offering" do
    assert_difference('CourseOffering.count') do
      post course_offerings_url, params: { course_offering: { course_id: @course_offering.course_id, semester: @course_offering.semester, year: @course_offering.year } }
    end

    assert_redirected_to course_offering_url(CourseOffering.last)
  end

  test "should show course_offering" do
    get course_offering_url(@course_offering)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_offering_url(@course_offering)
    assert_response :success
  end

  test "should update course_offering" do
    patch course_offering_url(@course_offering), params: { course_offering: { course_id: @course_offering.course_id, semester: @course_offering.semester, year: @course_offering.year } }
    assert_redirected_to course_offering_url(@course_offering)
  end

  test "should destroy course_offering" do
    assert_difference('CourseOffering.count', -1) do
      delete course_offering_url(@course_offering)
    end

    assert_redirected_to course_offerings_url
  end
end
