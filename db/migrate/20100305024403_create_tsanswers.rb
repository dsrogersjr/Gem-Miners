class CreateTsanswers < ActiveRecord::Migration
  def self.up
    create_table :tsanswers do |t|
      t.decimal :theanswer, :precision => 8, :scale => 2
      t.references :user
      t.references :tsquestion

      t.timestamps
    end
  end

  def self.down
    drop_table :tsanswers
  end
end
