class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table "groups" do |t|
      t.string :name
    end
    
    # generate the join table
      create_table "groups_users", :id => false do |t|
        t.integer "group_id", "user_id"
      end
      add_index "groups_users", "group_id"
      add_index "groups_users", "user_id"
  end

  def self.down
    drop_table "groups"
    drop_table "groups_users"  
  end
end