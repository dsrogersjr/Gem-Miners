class CreateThreesixtyQs < ActiveRecord::Migration
  def self.up
    create_table :threesixty_qs do |t|
      t.text :question_text
      t.text :question_comment
      t.text :answer_1
      t.text :answer_2
      t.text :answer_3
      t.text :answer_4
      t.references :threesixty

      t.timestamps
    end
  end

  def self.down
    drop_table :threesixty_qs
  end
end
