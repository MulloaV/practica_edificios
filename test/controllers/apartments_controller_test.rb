require 'test_helper'

class ApartmentsControllerTest < ActionController::TestCase
  setup do
    @building = buildings(:one)
    @apartment = apartments(:one)
  end

  test "should get index" do
    get :index, params: { building_id: @building }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { building_id: @building }
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post :create, params: { building_id: @building, apartment: @apartment.attributes }
    end

    assert_redirected_to building_apartment_path(@building, Apartment.last)
  end

  test "should show apartment" do
    get :show, params: { building_id: @building, id: @apartment }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { building_id: @building, id: @apartment }
    assert_response :success
  end

  test "should update apartment" do
    put :update, params: { building_id: @building, id: @apartment, apartment: @apartment.attributes }
    assert_redirected_to building_apartment_path(@building, Apartment.last)
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete :destroy, params: { building_id: @building, id: @apartment }
    end

    assert_redirected_to building_apartments_path(@building)
  end
end
