class CreateTeamdocuments < ActiveRecord::Migration
  def self.up
    create_table :teamdocuments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :teamdocuments
  end
end
