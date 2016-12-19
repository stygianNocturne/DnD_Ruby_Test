# this is a player character
class Character < ActiveRecord::Base
  belongs_to :race
  belongs_to :category
  validates :name, format: {with: /\A[a-zA-Z ]*\z/}
  validates_inclusion_of :alignment1, in: ['lawful', 'neutral', 'chaotic']
  validates_inclusion_of :alignment2, in: ['good', 'neutral', 'evil']
  validates_inclusion_of :strRoll, in: 1..20
  validates_inclusion_of :dexRoll, in: 1..20
  validates_inclusion_of :conRoll, in: 1..20
  validates_inclusion_of :perRoll, in: 1..20
  validates_inclusion_of :intRoll, in: 1..20
  validates_inclusion_of :wisRoll, in: 1..20
  validates_inclusion_of :chrRoll, in: 1..20
  validates_inclusion_of :stlRoll, in: 1..20
  validates_inclusion_of :maxHP, in: 1..100
  validates_inclusion_of :curHP, in: -5..100
  validates_inclusion_of :curHP, in: 0..20
end
