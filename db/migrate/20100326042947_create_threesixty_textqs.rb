class CreateThreesixtyTextqs < ActiveRecord::Migration
  def self.up
    create_table :threesixty_textqs do |t|
      t.text :question_text
      t.comment :question_comment
      t.references :threesixty

      t.timestamps
    end
  end

  def self.down
    drop_table :threesixty_textqs
  end
end
