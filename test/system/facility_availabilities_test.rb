require "application_system_test_case"

class FacilityAvailabilitiesTest < ApplicationSystemTestCase
  setup do
    @facility_availability = facility_availabilities(:one)
  end

  test "visiting the index" do
    visit facility_availabilities_url
    assert_selector "h1", text: "Facility availabilities"
  end

  test "should create facility availability" do
    visit facility_availabilities_url
    click_on "New facility availability"

    fill_in "Close time", with: @facility_availability.close_time
    fill_in "Day of week", with: @facility_availability.day_of_week
    fill_in "Facility", with: @facility_availability.facility_id
    check "Is active" if @facility_availability.is_active
    fill_in "Open time", with: @facility_availability.open_time
    click_on "Create Facility availability"

    assert_text "Facility availability was successfully created"
    click_on "Back"
  end

  test "should update Facility availability" do
    visit facility_availability_url(@facility_availability)
    click_on "Edit this facility availability", match: :first

    fill_in "Close time", with: @facility_availability.close_time.to_s
    fill_in "Day of week", with: @facility_availability.day_of_week
    fill_in "Facility", with: @facility_availability.facility_id
    check "Is active" if @facility_availability.is_active
    fill_in "Open time", with: @facility_availability.open_time.to_s
    click_on "Update Facility availability"

    assert_text "Facility availability was successfully updated"
    click_on "Back"
  end

  test "should destroy Facility availability" do
    visit facility_availability_url(@facility_availability)
    accept_confirm { click_on "Destroy this facility availability", match: :first }

    assert_text "Facility availability was successfully destroyed"
  end
end
