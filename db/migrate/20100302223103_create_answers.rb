class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :answer_type
      t.text :theanswer
      t.references :user
      t.references :mcquestion
      t.references :textquestion

      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end
