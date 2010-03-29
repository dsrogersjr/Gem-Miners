class AddForeignToMessages < ActiveRecord::Migration
  def self.up
    add_column :messages, :topic_id, :integer
  end

  def self.down
    remove_column :messages, :topic_id
  end
end
