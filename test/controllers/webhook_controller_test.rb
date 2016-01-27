require 'test_helper'

class WebhookControllerTest < ActionController::TestCase
  test "should get product_new" do
    get :product_new
    assert_response :success
  end

  test "should get product_updated" do
    get :product_updated
    assert_response :success
  end

  test "should get product_deleted" do
    get :product_deleted
    assert_response :success
  end

end
