class Comment < ActiveRecord::Base
  attr_accessible :text, :ad

  belongs_to :ad
  belongs_to :user

end
