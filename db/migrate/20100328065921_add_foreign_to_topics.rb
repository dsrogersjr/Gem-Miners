class AddForeignToTopics < ActiveRecord::Migration
  def self.up
    add_column :topics, :forum_id, :integer
  end

  def self.down
    remove_column :topics, :forum_id
  end
end
