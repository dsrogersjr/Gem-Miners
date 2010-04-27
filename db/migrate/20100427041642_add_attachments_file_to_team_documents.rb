class AddAttachmentsFileToTeamDocuments < ActiveRecord::Migration
  def self.up
    add_column :teamdocuments, :file_file_name, :string
    add_column :teamdocuments, :file_content_type, :string
    add_column :teamdocuments, :file_file_size, :integer
    add_column :teamdocuments, :file_updated_at, :datetime
  end

  def self.down
    remove_column :teamdocuments, :file_file_name
    remove_column :teamdocuments, :file_content_type
    remove_column :teamdocuments, :file_file_size
    remove_column :teamdocuments, :file_updated_at
  end
end
