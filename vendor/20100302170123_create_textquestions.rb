class CreateTextquestions < ActiveRecord::Migration
  def self.up
    create_table :textquestions do |t|
      t.text :question_text
      t.text :question_comment
      t.string :question_type, :default => 'text'
      t.references :survey

      t.timestamps
    end
  end

  def self.down
    drop_table :textquestions
  end
end
