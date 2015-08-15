class Company < ActiveRecord::Base
  validates_presence_of :title, :description, :site_link, :company_image

  mount_uploader :company_image, CompanyImageUploader
end
