require 'test_helper'

class FormHandlerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_handler_index_url
    assert_response :success
  end

end
