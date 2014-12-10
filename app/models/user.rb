class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many(:comments,     { :class_name => "Comment", :foreign_key => "commenter_id" })
  has_many(:followings,   { :class_name => "Following", :foreign_key => "follower_id" })
  has_many(:favoritings,  { :class_name => "Favoriting", :foreign_key => "favorited_by" })
  has_many :buildings, through: :favoritings

#Validations

  validates :email, :presence => true
  validates :email, :uniqueness => true



end
