class AddAttachmentFileToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :media
    end
  end

  def self.down
    remove_attachment :items, :media
  end
end
