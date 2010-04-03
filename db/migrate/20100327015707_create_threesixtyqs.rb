class CreateThreesixtyqs < ActiveRecord::Migration
  def self.up
    create_table :threesixtyqs do |t|
      t.text :question_text
      t.string :question_comment, :default => "0 = Minimal Effort, 3 = Exemplary"
      t.string :answer_1, :default => 0
      t.string :answer_2, :default => 1
      t.string :answer_3, :default => 2
      t.string :answer_4, :default => 3
      t.references :threesixty

      t.timestamps
    end
  end

  def self.down
    drop_table :threesixtyqs
  end
end
