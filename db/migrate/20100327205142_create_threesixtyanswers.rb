class CreateThreesixtyanswers < ActiveRecord::Migration
  def self.up
    create_table :threesixtyanswers do |t|
      t.boolean :theanswer_1
      t.boolean :theanswer_2
      t.boolean :theanswer_3
      t.boolean :theanswer_4
      t.references :user
      t.references :threesixtyq

      t.timestamps
    end
  end

  def self.down
    drop_table :threesixtyanswers
  end
end
