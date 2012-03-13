class Item < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :location
  has_and_belongs_to_many :categories
end
