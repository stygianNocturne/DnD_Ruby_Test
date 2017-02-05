# this is a player character
class Character < ActiveRecord::Base
  belongs_to :race
  belongs_to :category
  belongs_to :campaign
  belongs_to :user
  validates :name, format: {with: /\A[a-zA-Z ]*\z/}
  validates_inclusion_of :alignment1, in: ['lawful', 'neutral', 'chaotic']
  validates_inclusion_of :alignment2, in: ['good', 'neutral', 'evil']
  validates_inclusion_of :str_level, in: -10..10
  validates_inclusion_of :dex_level, in: -10..10
  validates_inclusion_of :con_level, in: -10..10
  validates_inclusion_of :per_level, in: -10..10
  validates_inclusion_of :int_level, in: -10..10
  validates_inclusion_of :wis_level, in: -10..10
  validates_inclusion_of :chr_level, in: -10..10
  validates_inclusion_of :stl_level, in: -10..10
  validates_inclusion_of :max_hp, in: 1..100
  validates_inclusion_of :cur_hp, in: -5..100
end
