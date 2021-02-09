require 'test_helper'

class NewsReleasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get news_releases_index_url
    assert_response :success
  end

end
