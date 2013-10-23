class AddAttachmentUploadedFileToUploads < ActiveRecord::Migration
  def self.up
    change_table :uploads do |t|
      t.attachment :uploaded_file
    end
  end

  def self.down
    drop_attached_file :uploads, :uploaded_file
  end
end
