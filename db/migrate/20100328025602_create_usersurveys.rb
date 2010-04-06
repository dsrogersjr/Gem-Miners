class CreateUsersurveys < ActiveRecord::Migration
  def self.up
    create_table :usersurveys do |t|
      t.boolean :taken, :default => false
      t.references :user
      t.references :survey

      t.timestamps
    end
  end

  def self.down
    drop_table :usersurveys
  end
end
