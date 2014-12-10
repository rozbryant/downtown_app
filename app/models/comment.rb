class Comment < ActiveRecord::Base

  belongs_to(:user, { :class_name => "User", :foreign_key => "commenter_id" })
  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })


#Validations

  validates :user, :presence => true


  validates :building, :presence => true

  validates :content, :presence => true



end
