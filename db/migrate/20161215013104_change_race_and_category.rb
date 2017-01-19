class ChangeRaceAndCategory < ActiveRecord::Migration
  def change
    change_table :races do |t|
      t.string :name
    end
    change_table :categories do |t|
      t.string :name
      t.string :primary_attribute
      t.string :secondary_attribute
    end
  end
end
