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
end
