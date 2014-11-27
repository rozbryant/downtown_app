class Favoriting < ActiveRecord::Base

  belongs_to(:user,     { :class_name => "User", :foreign_key => "favorited_by" })
  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })

end
