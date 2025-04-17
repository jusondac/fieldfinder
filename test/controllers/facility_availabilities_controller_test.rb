require "test_helper"

class FacilityAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facility_availability = facility_availabilities(:one)
  end

  test "should get index" do
    get facility_availabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_facility_availability_url
    assert_response :success
  end

  test "should create facility_availability" do
    assert_difference("FacilityAvailability.count") do
      post facility_availabilities_url, params: { facility_availability: { close_time: @facility_availability.close_time, day_of_week: @facility_availability.day_of_week, facility_id: @facility_availability.facility_id, is_active: @facility_availability.is_active, open_time: @facility_availability.open_time } }
    end

    assert_redirected_to facility_availability_url(FacilityAvailability.last)
  end

  test "should show facility_availability" do
    get facility_availability_url(@facility_availability)
    assert_response :success
  end

  test "should get edit" do
    get edit_facility_availability_url(@facility_availability)
    assert_response :success
  end

  test "should update facility_availability" do
    patch facility_availability_url(@facility_availability), params: { facility_availability: { close_time: @facility_availability.close_time, day_of_week: @facility_availability.day_of_week, facility_id: @facility_availability.facility_id, is_active: @facility_availability.is_active, open_time: @facility_availability.open_time } }
    assert_redirected_to facility_availability_url(@facility_availability)
  end

  test "should destroy facility_availability" do
    assert_difference("FacilityAvailability.count", -1) do
      delete facility_availability_url(@facility_availability)
    end

    assert_redirected_to facility_availabilities_url
  end
end
