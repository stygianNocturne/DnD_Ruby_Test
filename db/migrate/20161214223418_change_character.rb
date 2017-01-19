class ChangeCharacter < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.string :name
      t.belongs_to :race
      t.belongs_to :category
      t.string :alignment1
      t.string :alignment2
      t.integer :level
      t.integer :strRoll
      t.integer :dexRoll
      t.integer :conRoll
      t.integer :perRoll
      t.integer :intRoll
      t.integer :wisRoll
      t.integer :chrRoll
      t.integer :stlRoll
      t.integer :maxHP
      t.integer :curHP
      t.integer :armorClass
    end
  end
end
