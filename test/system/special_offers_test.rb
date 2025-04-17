require "application_system_test_case"

class SpecialOffersTest < ApplicationSystemTestCase
  setup do
    @special_offer = special_offers(:one)
  end

  test "visiting the index" do
    visit special_offers_url
    assert_selector "h1", text: "Special offers"
  end

  test "should create special offer" do
    visit special_offers_url
    click_on "New special offer"

    fill_in "Code", with: @special_offer.code
    fill_in "Description", with: @special_offer.description
    fill_in "Discount percentage", with: @special_offer.discount_percentage
    fill_in "End date", with: @special_offer.end_date
    fill_in "Facility", with: @special_offer.facility_id
    check "Is active" if @special_offer.is_active
    fill_in "Min hours", with: @special_offer.min_hours
    fill_in "Name", with: @special_offer.name
    fill_in "Start date", with: @special_offer.start_date
    click_on "Create Special offer"

    assert_text "Special offer was successfully created"
    click_on "Back"
  end

  test "should update Special offer" do
    visit special_offer_url(@special_offer)
    click_on "Edit this special offer", match: :first

    fill_in "Code", with: @special_offer.code
    fill_in "Description", with: @special_offer.description
    fill_in "Discount percentage", with: @special_offer.discount_percentage
    fill_in "End date", with: @special_offer.end_date
    fill_in "Facility", with: @special_offer.facility_id
    check "Is active" if @special_offer.is_active
    fill_in "Min hours", with: @special_offer.min_hours
    fill_in "Name", with: @special_offer.name
    fill_in "Start date", with: @special_offer.start_date
    click_on "Update Special offer"

    assert_text "Special offer was successfully updated"
    click_on "Back"
  end

  test "should destroy Special offer" do
    visit special_offer_url(@special_offer)
    accept_confirm { click_on "Destroy this special offer", match: :first }

    assert_text "Special offer was successfully destroyed"
  end
end
