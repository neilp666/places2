class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :places

  validates_presence_of :score
  validates_presence_of :content
end
