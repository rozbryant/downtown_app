class Space < ActiveRecord::Base


belongs_to :building


#Validations

 validates :building, :presence => true
 validates :building_id, :uniqueness => true

end
