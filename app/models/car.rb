class Car < ActiveRecord::Base
  
  validates :name, :presence => true
  validates :year, :numericality => { :only_integer => true }

  mount_uploader :image, ImageUploader
end
