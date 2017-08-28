class Product < ApplicationRecord
  include Filterable
  mount_uploader :image, ProductUploader

  scope :name_contains, -> (name) { where("name like ?", "%#{name}%")}
end
