class CreateQuestion360s < ActiveRecord::Migration
  def self.up
    create_table :question360s do |t|
      t.text :question_text
      t.references :question

      t.timestamps
    end
  end

  def self.down
    drop_table :question360s
  end
end
