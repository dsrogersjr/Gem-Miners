class CreateTsanswers < ActiveRecord::Migration
  def self.up
    create_table :tsanswers do |t|
      t.decimal :theanswer
      t.references :user
      t.references :tsquestion

      t.timestamps
    end
  end

  def self.down
    drop_table :tsanswers
  end
end
