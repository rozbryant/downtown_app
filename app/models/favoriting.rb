class Favoriting < ActiveRecord::Base

  belongs_to(:user,     { :class_name => "User", :foreign_key => "favorited_by" })
  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })

#Validations

  validates :building, :presence => true
  validates :building_id, :uniqueness => { :scope => :favorited_by }

  validates :user, :presence => true
  validates :favorited_by, :uniqueness => { :scope => :building_id }


end
