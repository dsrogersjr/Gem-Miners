class CreateTextanswers < ActiveRecord::Migration
  def self.up
    create_table :textanswers do |t|
      t.text :theanswer
      t.references :user
      t.references :textquestion

      t.timestamps
    end
  end

  def self.down
    drop_table :textanswers
  end
end
