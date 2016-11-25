require 'test_helper'

class PresidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @president = presidents(:one)
  end

  test "should get index" do
    get presidents_url
    assert_response :success
  end

  test "should get new" do
    get new_president_url
    assert_response :success
  end

  test "should create president" do
    assert_difference('President.count') do
      post presidents_url, params: { president: { country: @president.country, name: @president.name } }
    end

    assert_redirected_to president_url(President.last)
  end

  test "should show president" do
    get president_url(@president)
    assert_response :success
  end

  test "should get edit" do
    get edit_president_url(@president)
    assert_response :success
  end

  test "should update president" do
    patch president_url(@president), params: { president: { country: @president.country, name: @president.name } }
    assert_redirected_to president_url(@president)
  end

  test "should destroy president" do
    assert_difference('President.count', -1) do
      delete president_url(@president)
    end

    assert_redirected_to presidents_url
  end
end
