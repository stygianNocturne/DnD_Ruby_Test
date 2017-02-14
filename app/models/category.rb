# this is the character's class (aka warrior, mage, etc.)
class Category < ActiveRecord::Base
  has_many :characters
  belongs_to :campaign

  ATTRIBUTE_VALUES = ['str', 'dex', 'con', 'per', 'int', 'wis', 'chr', 'stl']
  ATTRIBUTE_NAMES = ['strength', 'dexterity', 'constitution', 'perception', 'intelligence', 'wisdom', 'charisma', 'stealth']

  validates_inclusion_of :primary_attribute, in: ATTRIBUTE_VALUES
  validates_inclusion_of :secondary_attribute, in: ATTRIBUTE_VALUES

  def self.get_attributes
    return ATTRIBUTE_VALUES
  end

  def self.get_attribute_options
    return ATTRIBUTE_NAMES.map{|a| a.humanize}.zip ATTRIBUTE_VALUES
  end

  # TODO: Add method to get classes specific to a campaign
end
