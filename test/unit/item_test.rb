require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'item needs a name' do
    item = Item.create name: 'Hilti'
    assert item.persisted?
  end

  test 'item is not saved without a name' do
    item = Item.create
    refute item.persisted?
  end

  test 'item has a location' do
    item = items(:one)
    assert_equal locations(:home).name, item.location.name
  end

  test 'item has a category' do
    item = items(:one)
    item.categories << categories(:books)

    assert_equal categories(:books), item.categories.first
  end
end
