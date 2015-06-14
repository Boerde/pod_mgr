class AddPaperclipToItems < ActiveRecord::Migration
  def change
    add_column :items, :file, :paperclip
  end
end
