class AssociateLocationsWithUsers < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.references :location
    end
  end
end
