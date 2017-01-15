# this is the character's race (aka human, elf, etc.)
class Race < ActiveRecord::Base
  has_many :characters
end
