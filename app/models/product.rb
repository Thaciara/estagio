class Product < ApplicationRecord
  mount_uploader :image, ProductUploader
end
