class CreateThreesixtytextas < ActiveRecord::Migration
  def self.up
    create_table :threesixtytextas do |t|
      t.text :theanswer
      t.references :user
      t.references :threesixtytextq

      t.timestamps
    end
  end

  def self.down
    drop_table :threesixtytextas
  end
end
