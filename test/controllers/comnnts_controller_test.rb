require 'test_helper'

class ComnntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comnnt = comnnts(:one)
  end

  test "should get index" do
    get comnnts_url
    assert_response :success
  end

  test "should get new" do
    get new_comnnt_url
    assert_response :success
  end

  test "should create comnnt" do
    assert_difference('Comnnt.count') do
      post comnnts_url, params: { comnnt: { description: @comnnt.description, title: @comnnt.title } }
    end

    assert_redirected_to comnnt_url(Comnnt.last)
  end

  test "should show comnnt" do
    get comnnt_url(@comnnt)
    assert_response :success
  end

  test "should get edit" do
    get edit_comnnt_url(@comnnt)
    assert_response :success
  end

  test "should update comnnt" do
    patch comnnt_url(@comnnt), params: { comnnt: { description: @comnnt.description, title: @comnnt.title } }
    assert_redirected_to comnnt_url(@comnnt)
  end

  test "should destroy comnnt" do
    assert_difference('Comnnt.count', -1) do
      delete comnnt_url(@comnnt)
    end

    assert_redirected_to comnnts_url
  end
end
