require 'test_helper'

class FoodAdvisorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_advisor = food_advisors(:one)
  end

  test "should get index" do
    get food_advisors_url, as: :json
    assert_response :success
  end

  test "should create food_advisor" do
    assert_difference('FoodAdvisor.count') do
      post food_advisors_url, params: { food_advisor: { how_big_meals: @food_advisor.how_big_meals, how_healthy: @food_advisor.how_healthy, how_much_snacked: @food_advisor.how_much_snacked } }, as: :json
    end

    assert_response 201
  end

  test "should show food_advisor" do
    get food_advisor_url(@food_advisor), as: :json
    assert_response :success
  end

  test "should update food_advisor" do
    patch food_advisor_url(@food_advisor), params: { food_advisor: { how_big_meals: @food_advisor.how_big_meals, how_healthy: @food_advisor.how_healthy, how_much_snacked: @food_advisor.how_much_snacked } }, as: :json
    assert_response 200
  end

  test "should destroy food_advisor" do
    assert_difference('FoodAdvisor.count', -1) do
      delete food_advisor_url(@food_advisor), as: :json
    end

    assert_response 204
  end
end
