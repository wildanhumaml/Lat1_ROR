require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_sellect	'#columns #side a', minimum: 4
    assert_sellect	'#main .entry', 3
    assert_sellect	'h3', 'Programming Ruby 1.9'
    assert_sellect	'.price', /\$[,\d]+\.\d\d/
  end

end
