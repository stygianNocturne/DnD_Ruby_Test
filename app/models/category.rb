# this is the character's class (aka warrior, mage, etc.)
class Category < ActiveRecord::Base
  has_many :characters
  belongs_to :campaign
  validates_inclusion_of :primary_attribute, in: ['str', 'dex', 'con', 'per', 'int', 'wis', 'chr', 'stl']
  validates_inclusion_of :secondary_attribute, in: ['str', 'dex', 'con', 'per', 'int', 'wis', 'chr', 'stl']
end
