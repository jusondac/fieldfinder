require "application_system_test_case"

class BookingEquipmentsTest < ApplicationSystemTestCase
  setup do
    @booking_equipment = booking_equipments(:one)
  end

  test "visiting the index" do
    visit booking_equipments_url
    assert_selector "h1", text: "Booking equipment"
  end

  test "should create booking equipment" do
    visit booking_equipments_url
    click_on "New booking equipment"

    fill_in "Booking", with: @booking_equipment.booking_id
    fill_in "Equipment", with: @booking_equipment.equipment_id
    fill_in "Price per unit", with: @booking_equipment.price_per_unit
    fill_in "Quantity", with: @booking_equipment.quantity
    fill_in "Total price", with: @booking_equipment.total_price
    click_on "Create Booking equipment"

    assert_text "Booking equipment was successfully created"
    click_on "Back"
  end

  test "should update Booking equipment" do
    visit booking_equipment_url(@booking_equipment)
    click_on "Edit this booking equipment", match: :first

    fill_in "Booking", with: @booking_equipment.booking_id
    fill_in "Equipment", with: @booking_equipment.equipment_id
    fill_in "Price per unit", with: @booking_equipment.price_per_unit
    fill_in "Quantity", with: @booking_equipment.quantity
    fill_in "Total price", with: @booking_equipment.total_price
    click_on "Update Booking equipment"

    assert_text "Booking equipment was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking equipment" do
    visit booking_equipment_url(@booking_equipment)
    accept_confirm { click_on "Destroy this booking equipment", match: :first }

    assert_text "Booking equipment was successfully destroyed"
  end
end
