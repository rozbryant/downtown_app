class Assignment < ActiveRecord::Base

  belongs_to(:area,     { :class_name => "Area", :foreign_key => "area_id" })
  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })

end
