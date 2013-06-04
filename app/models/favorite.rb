class Favorite < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :ad
  belongs_to :user
  
end
