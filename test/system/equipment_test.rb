require "application_system_test_case"

class EquipmentTest < ApplicationSystemTestCase
  setup do
    @equipment = equipment(:one)
  end

  test "visiting the index" do
    visit equipment_url
    assert_selector "h1", text: "Equipment"
  end

  test "should create equipment" do
    visit equipment_url
    click_on "New equipment"

    fill_in "Description", with: @equipment.description
    fill_in "Facility type", with: @equipment.facility_type
    check "Is active" if @equipment.is_active
    fill_in "Name", with: @equipment.name
    fill_in "Price per hour", with: @equipment.price_per_hour
    fill_in "Quantity available", with: @equipment.quantity_available
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "should update Equipment" do
    visit equipment_url(@equipment)
    click_on "Edit this equipment", match: :first

    fill_in "Description", with: @equipment.description
    fill_in "Facility type", with: @equipment.facility_type
    check "Is active" if @equipment.is_active
    fill_in "Name", with: @equipment.name
    fill_in "Price per hour", with: @equipment.price_per_hour
    fill_in "Quantity available", with: @equipment.quantity_available
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipment" do
    visit equipment_url(@equipment)
    accept_confirm { click_on "Destroy this equipment", match: :first }

    assert_text "Equipment was successfully destroyed"
  end
end
