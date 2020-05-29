require "application_system_test_case"

class GeosTest < ApplicationSystemTestCase
  setup do
    @geo = geos(:one)
  end

  test "visiting the index" do
    visit geos_url
    assert_selector "h1", text: "Geos"
  end

  test "creating a Geo" do
    visit geos_url
    click_on "New Geo"

    fill_in "Country", with: @geo.country
    fill_in "Expectancy", with: @geo.expectancy
    click_on "Create Geo"

    assert_text "Geo was successfully created"
    click_on "Back"
  end

  test "updating a Geo" do
    visit geos_url
    click_on "Edit", match: :first

    fill_in "Country", with: @geo.country
    fill_in "Expectancy", with: @geo.expectancy
    click_on "Update Geo"

    assert_text "Geo was successfully updated"
    click_on "Back"
  end

  test "destroying a Geo" do
    visit geos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Geo was successfully destroyed"
  end
end
