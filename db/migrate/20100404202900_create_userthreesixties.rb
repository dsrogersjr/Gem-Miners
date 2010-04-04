class CreateUserthreesixties < ActiveRecord::Migration
  def self.up
    create_table :userthreesixties do |t|

      t.boolean :taken

      t.references :user

      t.references :threesixty


      t.timestamps

    end
  end

  def self.down
    drop_table :userthreesixties
  end
end
