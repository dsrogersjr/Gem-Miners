class CreateMcanswers < ActiveRecord::Migration
  def self.up
    create_table :mcanswers do |t|
      t.boolean :answered, :default => false
      t.boolean :theanswer_1, :default => false
      t.boolean :theanswer_2, :default => false
      t.boolean :theanswer_3, :default => false
      t.boolean :theanswer_4, :default => false
      t.boolean :theanswer_5, :default => false
      t.references :user
      t.references :mcquestion

      t.timestamps
    end
  end

  def self.down
    drop_table :mcanswers
  end
end
