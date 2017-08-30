class Product < ApplicationRecord
  include Filterable
  mount_uploader :image, ProductUploader

  validates :name, :description, presence:true

  scope :name_contains, -> (name) { where("name like ?", "%#{name}%")}
end
