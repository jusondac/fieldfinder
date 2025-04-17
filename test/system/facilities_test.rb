require "application_system_test_case"

class FacilitiesTest < ApplicationSystemTestCase
  setup do
    @facility = facilities(:one)
  end

  test "visiting the index" do
    visit facilities_url
    assert_selector "h1", text: "Facilities"
  end

  test "should create facility" do
    visit facilities_url
    click_on "New facility"

    fill_in "Capacity", with: @facility.capacity
    fill_in "Description", with: @facility.description
    fill_in "Facility type", with: @facility.facility_type
    fill_in "Hourly rate", with: @facility.hourly_rate
    fill_in "Image url", with: @facility.image_url
    check "Is active" if @facility.is_active
    fill_in "Name", with: @facility.name
    click_on "Create Facility"

    assert_text "Facility was successfully created"
    click_on "Back"
  end

  test "should update Facility" do
    visit facility_url(@facility)
    click_on "Edit this facility", match: :first

    fill_in "Capacity", with: @facility.capacity
    fill_in "Description", with: @facility.description
    fill_in "Facility type", with: @facility.facility_type
    fill_in "Hourly rate", with: @facility.hourly_rate
    fill_in "Image url", with: @facility.image_url
    check "Is active" if @facility.is_active
    fill_in "Name", with: @facility.name
    click_on "Update Facility"

    assert_text "Facility was successfully updated"
    click_on "Back"
  end

  test "should destroy Facility" do
    visit facility_url(@facility)
    accept_confirm { click_on "Destroy this facility", match: :first }

    assert_text "Facility was successfully destroyed"
  end
end
