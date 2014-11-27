class Comment < ActiveRecord::Base

  belongs_to(:user, { :class_name => "Comment", :foreign_key => "commenter_id" })
  belongs_to(:building, { :class_name => "Comment", :foreign_key => "building_id" })

end
