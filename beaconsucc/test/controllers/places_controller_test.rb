require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { address: @place.address, category_id: @place.category_id, city_id: @place.city_id, description: @place.description, latitude: @place.latitude, longitude: @place.longitude, minor: @place.minor, name: @place.name, string: @place.string }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    patch :update, id: @place, place: { address: @place.address, category_id: @place.category_id, city_id: @place.city_id, description: @place.description, latitude: @place.latitude, longitude: @place.longitude, minor: @place.minor, name: @place.name, string: @place.string }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end
