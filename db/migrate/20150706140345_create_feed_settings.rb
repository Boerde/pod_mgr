class CreateFeedSettings < ActiveRecord::Migration
  def change
    create_table :feed_settings do |t|
      t.string :title
      t.string :link
      t.string :language
      t.string :copyright
      t.string :subtitle
      t.string :author
      t.string :summary
      t.string :description
      t.string :owner_name
      t.string :owner_mail
      t.string :image
      t.string :category
      t.string :keywords

      t.timestamps null: false
    end
  end
end
