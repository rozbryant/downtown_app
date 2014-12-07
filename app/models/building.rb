class Building < ActiveRecord::Base

#One to many associations

  has_many(:comments,     { :class_name => "Comment", :foreign_key => "building_id" })
  has_many(:favoritings,  { :class_name => "Favoriting", :foreign_key => "building_id" })
  has_many(:followings,   { :class_name => "Following", :foreign_key => "building_id" })
  has_many(:assignments,  { :class_name => "Assignment", :foreign_key => "building_id" })

#Many to many associations

  has_many :areas, :through => :assignments
  has_many :users, :through => :comments
  has_many :users, :through => :favoritings
  has_many :users, :through => :followings

#Validations

  validates :name,        :presence => true
  validates :address,     :presence => true
  validates :city,        :presence => true
  validates :state,       :presence => true
  validates :zip,         :presence => true

def self.search(query)
  where('name LIKE ? OR address LIKE ?', "%#{query}%", "%#{query}%" )
    end

end
