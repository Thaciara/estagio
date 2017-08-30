class Client < ApplicationRecord
	 validates :name, :logo, presence:true
	 mount_uploader :logo, ClientUploader
end
