class Car < ActiveRecord::Base
  validates :name, :presence => true
end
