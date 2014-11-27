class Following < ActiveRecord::Base

  belongs_to(:user,     { :class_name => "User", :foreign_key => "follower_id" })
  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })

end
