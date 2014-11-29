class Following < ActiveRecord::Base

  belongs_to(:user,     { :class_name => "User", :foreign_key => "follower_id" })
  belongs_to(:building, { :class_name => "Building", :foreign_key => "building_id" })

#Validations

  validates :building, :presence => true
  validates :building_id, :uniqueness => { :scope => :follower_id }

  validates :user, :presence => true
  validates :follower_id, :uniqueness => { :scope => :building_id }

  validate :check_buy_sell => true

  def check_buy_sell
    if buyer.nil? and seller.nil?
      return false
    else
      return true
    end
  end

end
