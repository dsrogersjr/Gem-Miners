class CreateThreesixties < ActiveRecord::Migration
  def self.up
    create_table :threesixties do |t|
      t.string :threesixty_name
      t.text :threesixty_intro
      t.string :threesixty_creator
      t.date :threesixty_date

      t.timestamps

      t.timestamps
    end
  end

  def self.down
    drop_table :threesixties
  end
end
