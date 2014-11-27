class Area < ActiveRecord::Base

  has_many(:assignments,     { :class_name => "Assignment", :foreign_key => "area_id" })

#Validations

  validates :name, :presence => true

end
