class Area < ActiveRecord::Base

  has_many(:assignments,     { :class_name => "Assignment", :foreign_key => "area_id" })
  has_many :buildings, through: :assignments

#Validations

  validates :name, :presence => true
  validates :name, :uniqueness => true

end
