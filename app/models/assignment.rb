class Assignment < ActiveRecord::Base

  belongs_to(:area,     { :class_name => "Area", :foreign_key => "area_id" })
  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })


#Validations

  validates :building, :presence => true
  validates :building_id, :uniqueness => { :scope => :area_id }

  validates :area, :presence => true
  validates :area_id, :uniqueness => { :scope => :building_id }

end
