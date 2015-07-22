atom_feed({'xmlns:itunes' => 'http://www.itunes.com/dtds/podcast-1.0.dtd'}) do |feed|
	srcFeed = FeedSetting.first
	feed.title(srcFeed.title)
	feed.link(srcFeed.link)
	feed.language(srcFeed.language)
	feed.copyright(srcFeed.copyright)
	feed.tag!('itunes:subtitle', 'hcg test')

	@items.each do |i|
		feed.entry(i) do |entry|
			entry.title(i.title)
			entry.author(i.author)
		end
	end	
end
