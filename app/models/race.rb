# this is the character's race (aka human, elf, etc.)
class Race < ActiveRecord::Base
  has_many :characters
  belongs_to :campaign

  # TODO: Add method to get races specific to a campaign
end
