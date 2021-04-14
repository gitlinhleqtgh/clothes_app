class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :sub_categories, class_name: "Category",
   foreign_key: :id_parent, dependent: :destroy

  scope :top_level, ->{where(id_parent: nil)}
end
