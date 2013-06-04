class Photo < ActiveRecord::Base
  attr_accessible :caption

  belongs_to :ad
  belongs_to :user
  
end
