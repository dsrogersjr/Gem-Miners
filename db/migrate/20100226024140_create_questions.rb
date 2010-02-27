class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :question_number
      t.string :question_type
      t.text :question_comment
      t.text :question_text
      t.references :survey

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
