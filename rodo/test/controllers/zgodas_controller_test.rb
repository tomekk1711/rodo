require 'test_helper'

class ZgodasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get zgodas_index_url
    assert_response :success
  end

  test "should get pokaz" do
    get zgodas_pokaz_url
    assert_response :success
  end

  test "should get nowa" do
    get zgodas_nowa_url
    assert_response :success
  end

  test "should get edycja" do
    get zgodas_edycja_url
    assert_response :success
  end

  test "should get usun" do
    get zgodas_usun_url
    assert_response :success
  end

end
