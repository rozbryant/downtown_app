class Active < ActiveRecord::Base

  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })

#Validations

  validates :building, :presence => true

end
