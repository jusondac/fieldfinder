require "test_helper"

class BookingEquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_equipment = booking_equipments(:one)
  end

  test "should get index" do
    get booking_equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_equipment_url
    assert_response :success
  end

  test "should create booking_equipment" do
    assert_difference("BookingEquipment.count") do
      post booking_equipments_url, params: { booking_equipment: { booking_id: @booking_equipment.booking_id, equipment_id: @booking_equipment.equipment_id, price_per_unit: @booking_equipment.price_per_unit, quantity: @booking_equipment.quantity, total_price: @booking_equipment.total_price } }
    end

    assert_redirected_to booking_equipment_url(BookingEquipment.last)
  end

  test "should show booking_equipment" do
    get booking_equipment_url(@booking_equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_equipment_url(@booking_equipment)
    assert_response :success
  end

  test "should update booking_equipment" do
    patch booking_equipment_url(@booking_equipment), params: { booking_equipment: { booking_id: @booking_equipment.booking_id, equipment_id: @booking_equipment.equipment_id, price_per_unit: @booking_equipment.price_per_unit, quantity: @booking_equipment.quantity, total_price: @booking_equipment.total_price } }
    assert_redirected_to booking_equipment_url(@booking_equipment)
  end

  test "should destroy booking_equipment" do
    assert_difference("BookingEquipment.count", -1) do
      delete booking_equipment_url(@booking_equipment)
    end

    assert_redirected_to booking_equipments_url
  end
end
