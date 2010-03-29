class AddUserToTopics < ActiveRecord::Migration
  def self.up
    add_column :topics, :user_id, :integer
  end

  def self.down
    remove_column :topics, :user_id
  end
end
