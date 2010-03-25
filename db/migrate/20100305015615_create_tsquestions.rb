class CreateTsquestions < ActiveRecord::Migration
  def self.up
    create_table :tsquestions do |t|
      t.string :question_text, :default => "On a scale of zero to 3 "
      t.text :question_comment
      t.references :survey

      t.timestamps
    end
  end

  def self.down
    drop_table :tsquestions
  end
end
