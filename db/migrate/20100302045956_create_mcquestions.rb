class CreateMcquestions < ActiveRecord::Migration
  def self.up
    create_table :mcquestions do |t|
      t.text :question_text
      t.text :question_comment
      t.string :question_type, :default => 'mc'
      t.text :answer_1
      t.text :answer_2
      t.text :answer_3
      t.text :answer_4
      t.text :answer_5
      t.boolean :multipleanswers, :default => 0
      t.references :survey

      t.timestamps
    end
  end

  def self.down
    drop_table :mcquestions
  end
end
