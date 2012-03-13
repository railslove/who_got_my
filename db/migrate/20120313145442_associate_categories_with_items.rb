class AssociateCategoriesWithItems < ActiveRecord::Migration
  def change
    create_table :categories_items, id: false do |t|
      t.references :category
      t.references :item
    end
  end
end
