class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :name
      t.integer :last_poster_id
      t.datetime :last_post_at

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
