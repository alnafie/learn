class Comment < ActiveRecord::Base
  attr_accessible :text

  belongs_to :ad
  belongs_to :user

end
