# this is a player character
class Character < ActiveRecord::Base
  belongs_to :race
  belongs_to :category
end
