require "test_helper"

class SpecialOffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @special_offer = special_offers(:one)
  end

  test "should get index" do
    get special_offers_url
    assert_response :success
  end

  test "should get new" do
    get new_special_offer_url
    assert_response :success
  end

  test "should create special_offer" do
    assert_difference("SpecialOffer.count") do
      post special_offers_url, params: { special_offer: { code: @special_offer.code, description: @special_offer.description, discount_percentage: @special_offer.discount_percentage, end_date: @special_offer.end_date, facility_id: @special_offer.facility_id, is_active: @special_offer.is_active, min_hours: @special_offer.min_hours, name: @special_offer.name, start_date: @special_offer.start_date } }
    end

    assert_redirected_to special_offer_url(SpecialOffer.last)
  end

  test "should show special_offer" do
    get special_offer_url(@special_offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_special_offer_url(@special_offer)
    assert_response :success
  end

  test "should update special_offer" do
    patch special_offer_url(@special_offer), params: { special_offer: { code: @special_offer.code, description: @special_offer.description, discount_percentage: @special_offer.discount_percentage, end_date: @special_offer.end_date, facility_id: @special_offer.facility_id, is_active: @special_offer.is_active, min_hours: @special_offer.min_hours, name: @special_offer.name, start_date: @special_offer.start_date } }
    assert_redirected_to special_offer_url(@special_offer)
  end

  test "should destroy special_offer" do
    assert_difference("SpecialOffer.count", -1) do
      delete special_offer_url(@special_offer)
    end

    assert_redirected_to special_offers_url
  end
end
