class AddNamesAndDescriptions < ActiveRecord::Migration
  def change
    change_table :campaigns do |t|
      t.string :name
      t.text :description
    end

    change_table :categories do |t|
      t.text :description
    end

    change_table :races do |t|
      t.text :description
    end

    change_table :characters do |t|
      t.rename :strRoll, :str_level
      t.rename :dexRoll, :dex_level
      t.rename :conRoll, :con_level
      t.rename :perRoll, :per_level
      t.rename :intRoll, :int_level
      t.rename :wisRoll, :wis_level
      t.rename :chrRoll, :chr_level
      t.rename :stlRoll, :stl_level
      t.rename :maxHP, :max_hp
      t.rename :curHP, :cur_hp
      t.rename :armorClass, :armor_class
      t.belongs_to :user
    end

    change_table :users do |t|
      t.string :name
    end
  end
end
