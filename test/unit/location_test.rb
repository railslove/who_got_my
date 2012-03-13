require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test 'has may items' do
    assert_equal [items(:one)], locations(:home).items
  end
end
