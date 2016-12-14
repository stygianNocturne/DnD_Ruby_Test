# this is the character's class (aka warrior, mage, etc.)
class Category < ActiveRecord::Base
    has_many :characters
end
