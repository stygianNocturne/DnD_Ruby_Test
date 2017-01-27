#this is a campaign
class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :characters
  has_many :races
  has_many :categories
end
