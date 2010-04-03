class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.text :survey_name
      t.text :survey_intro
      t.date :survey_date
      t.string :survey_creator

      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
