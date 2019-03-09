require 'test_helper'

class ReservasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reservas_new_url
    assert_response :success
  end

end
