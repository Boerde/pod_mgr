json.array!(@feed_settings) do |feed_setting|
  json.extract! feed_setting, :id, :title, :link, :language, :copyright, :subtitle, :author, :summary, :description, :owner_name, :owner_mail, :image, :category, :keywords
  json.url feed_setting_url(feed_setting, format: :json)
end
