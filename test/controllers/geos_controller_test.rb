require 'test_helper'

class GeosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geo = geos(:one)
  end

  test "should get index" do
    get geos_url
    assert_response :success
  end

  test "should get new" do
    get new_geo_url
    assert_response :success
  end

  test "should create geo" do
    assert_difference('Geo.count') do
      post geos_url, params: { geo: { country: @geo.country, expectancy: @geo.expectancy } }
    end

    assert_redirected_to geo_url(Geo.last)
  end

  test "should show geo" do
    get geo_url(@geo)
    assert_response :success
  end

  test "should get edit" do
    get edit_geo_url(@geo)
    assert_response :success
  end

  test "should update geo" do
    patch geo_url(@geo), params: { geo: { country: @geo.country, expectancy: @geo.expectancy } }
    assert_redirected_to geo_url(@geo)
  end

  test "should destroy geo" do
    assert_difference('Geo.count', -1) do
      delete geo_url(@geo)
    end

    assert_redirected_to geos_url
  end
end
