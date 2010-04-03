class CreateThreesixtytextqs < ActiveRecord::Migration
  def self.up
    create_table :threesixtytextqs do |t|
      t.text :question_text
      t.text :question_comment
      t.references :threesixty

      t.timestamps
    end
  end

  def self.down
    drop_table :threesixtytextqs
  end
end
