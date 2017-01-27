class AddCampaign < ActiveRecord::Migration
  def change

    create_table :campaigns do |t|
      t.belongs_to :user
      t.timestamps null: false
    end

    change_table :characters do |t|
      t.belongs_to :campaign
    end

    change_table :races do |t|
      t.belongs_to :campaign
    end

    change_table :categories do |t|
      t.belongs_to :campaign
    end

  end
end
