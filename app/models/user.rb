class User < ActiveRecord::Base

  has_many(:comments,     { :class_name => "Comment", :foreign_key => "commenter_id" })
  has_many(:followings,   { :class_name => "Following", :foreign_key => "follower_id" })
  has_many(:favoritings,  { :class_name => "Favoriting", :foreign_key => "favorited_by" })


end
